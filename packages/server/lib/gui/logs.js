/* eslint-disable
    no-console,
*/
// TODO: This file was created by bulk-decaffeinate.
// Fix any style issues and re-enable lint.
/*
 * decaffeinate suggestions:
 * DS102: Remove unnecessary code created because of implicit returns
 * Full docs: https://github.com/decaffeinate/decaffeinate/blob/master/docs/suggestions.md
 */
const chalk = require('chalk')
const logger = require('../logger')

module.exports = {
  get () {
    return logger.getLogs()
  },

  clear () {
    return logger.clearLogs()
  },

  off () {
    return logger.off()
  },

  onLog (fn) {
    return logger.onLog(fn)
  },

  error (err) {
    // swallow any errors creating this exception
    return logger.createException(err).catch(() => {})
  },

  print () {
    // print all the logs and exit
    return this.get().then((logs) => {
      return logs.forEach((log, i) => {
        const str = JSON.stringify(log)
        const color = (i % 2) === 0 ? 'cyan' : 'yellow'

        return console.log(chalk[color](str))
      })
    })
  },
}
