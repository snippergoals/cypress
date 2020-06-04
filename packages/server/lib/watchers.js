/* eslint-disable
    no-unused-vars,
*/
// TODO: This file was created by bulk-decaffeinate.
// Fix any style issues and re-enable lint.
/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * DS205: Consider reworking code to avoid use of IIFEs
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
const _ = require('lodash')
const chokidar = require('chokidar')
const dependencyTree = require('dependency-tree')
const pathHelpers = require('./util/path_helpers')

class Watchers {
  constructor () {
    if (!(this instanceof Watchers)) {
      return new Watchers
    }

    this.watchers = {}
  }

  close () {
    return (() => {
      const result = []

      for (let filePath in this.watchers) {
        result.push(this._remove(filePath))
      }

      return result
    })()
  }

  watch (filePath, options = {}) {
    _.defaults(options, {
      useFsEvents: true,
      ignored: null,
      onChange: null,
      onReady: null,
      onError: null,
    })

    const w = chokidar.watch(filePath, options)

    this._add(filePath, w)

    if (_.isFunction(options.onChange)) {
      w.on('change', options.onChange)
    }

    if (_.isFunction(options.onReady)) {
      w.on('ready', options.onReady)
    }

    if (_.isFunction(options.onError)) {
      w.on('error', options.onError)
    }

    return this
  }

  watchTree (filePath, options = {}) {
    const files = dependencyTree.toList({
      filename: filePath,
      directory: process.cwd(),
      filter (filePath) {
        return filePath.indexOf('node_modules') === -1
      },
    })

    return _.each(files, (file) => {
      return this.watch(file, options)
    })
  }

  _add (filePath, watcher) {
    this._remove(filePath)

    this.watchers[filePath] = watcher
  }

  _remove (filePath) {
    let watcher

    if (!(watcher = this.watchers[filePath])) {
      return
    }

    watcher.close()

    return delete this.watchers[filePath]
  }
}

module.exports = Watchers
