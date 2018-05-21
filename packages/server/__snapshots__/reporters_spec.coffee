exports['e2e reporters reports error if cannot load reporter 1'] = `Could not load reporter by name: module-does-not-exist

We searched for the reporter in these paths:

- /foo/bar/.projects/e2e/module-does-not-exist
- /foo/bar/.projects/e2e/node_modules/module-does-not-exist

The error we received was:

Cannot find module '/foo/bar/.projects/e2e/node_modules/module-does-not-exist'

Learn more at stack trace line
`

exports['e2e reporters supports junit reporter and reporter options 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_passing_spec.coffee)                                               │
  │ Searched:   cypress/integration/simple_passing_spec.coffee                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_passing_spec.coffee...                                                   (1 of 1) 

  (Results)

  ┌──────────────────────────────────────────┐
  │ Tests:        1                          │
  │ Passing:      1                          │
  │ Failing:      0                          │
  │ Pending:      0                          │
  │ Skipped:      0                          │
  │ Screenshots:  0                          │
  │ Video:        true                       │
  │ Duration:     X seconds                  │
  │ Spec Ran:     simple_passing_spec.coffee │
  └──────────────────────────────────────────┘


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔ simple_passing_spec.coffee                   Xs        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    All specs passed!                              Xs        1        1        -        -        -  

`

exports['e2e reporters supports local custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_passing_spec.coffee)                                               │
  │ Searched:   cypress/integration/simple_passing_spec.coffee                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_passing_spec.coffee...                                                   (1 of 1) 
passes
finished!

  (Results)

  ┌──────────────────────────────────────────┐
  │ Tests:        1                          │
  │ Passing:      1                          │
  │ Failing:      0                          │
  │ Pending:      0                          │
  │ Skipped:      0                          │
  │ Screenshots:  0                          │
  │ Video:        true                       │
  │ Duration:     X seconds                  │
  │ Spec Ran:     simple_passing_spec.coffee │
  └──────────────────────────────────────────┘


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔ simple_passing_spec.coffee                   Xs        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    All specs passed!                              Xs        1        1        -        -        -  

`

exports['e2e reporters mochawesome passes with mochawesome@1.5.2 npm custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_passing_spec.coffee)                                               │
  │ Searched:   cypress/integration/simple_passing_spec.coffee                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_passing_spec.coffee...                                                   (1 of 1) 
[mochawesome] Generating report files...



  simple passing spec
    ✓ passes


  1 passing


[mochawesome] Report saved to mochawesome-reports/mochawesome.html



  (Results)

  ┌──────────────────────────────────────────┐
  │ Tests:        1                          │
  │ Passing:      1                          │
  │ Failing:      0                          │
  │ Pending:      0                          │
  │ Skipped:      0                          │
  │ Screenshots:  0                          │
  │ Video:        true                       │
  │ Duration:     X seconds                  │
  │ Spec Ran:     simple_passing_spec.coffee │
  └──────────────────────────────────────────┘


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔ simple_passing_spec.coffee                   Xs        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    All specs passed!                              Xs        1        1        -        -        -  

`

exports['e2e reporters mochawesome fails with mochawesome@1.5.2 npm custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_failing_hook_spec.coffee)                                          │
  │ Searched:   cypress/integration/simple_failing_hook_spec.coffee                                │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_failing_hook_spec.coffee...                                              (1 of 1) 
[mochawesome] Generating report files...



  simple failing hook spec
    beforeEach hooks
      1) "before each" hook for "never gets here"
    pending
      - is pending
    afterEach hooks
      ✓ runs this
      2) "after each" hook for "runs this"
    after hooks
      ✓ runs this
      ✓ fails on this
      3) "after all" hook for "fails on this"


  3 passing
  1 pending
  3 failing

  1) simple failing hook spec
       beforeEach hooks
         "before each" hook for "never gets here":
     Error: fail1

Because this error occurred during a 'before each' hook we are skipping the remaining tests in the current suite: 'beforeEach hooks'
      at stack trace line

  2) simple failing hook spec
       afterEach hooks
         "after each" hook for "runs this":
     Error: fail2

Because this error occurred during a 'after each' hook we are skipping the remaining tests in the current suite: 'afterEach hooks'
      at stack trace line

  3) simple failing hook spec
       after hooks
         "after all" hook for "fails on this":
     Error: fail3

Because this error occurred during a 'after all' hook we are skipping the remaining tests in the current suite: 'after hooks'
      at stack trace line




[mochawesome] Report saved to mochawesome-reports/mochawesome.html



  (Results)

  ┌───────────────────────────────────────────────┐
  │ Tests:        6                               │
  │ Passing:      1                               │
  │ Failing:      3                               │
  │ Pending:      1                               │
  │ Skipped:      1                               │
  │ Screenshots:  3                               │
  │ Video:        true                            │
  │ Duration:     X seconds                       │
  │ Spec Ran:     simple_failing_hook_spec.coffee │
  └───────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- beforeEach hooks -- never gets here -- before each hook.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- afterEach hooks -- runs this -- after each hook.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- after hooks -- fails on this -- after all hook.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ simple_failing_hook_spec.coffee              Xs        6        1        3        1        1 │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        6        1        3        1        1  

`

exports['e2e reporters mochawesome passes with mochawesome@2.3.1 npm custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_passing_spec.coffee)                                               │
  │ Searched:   cypress/integration/simple_passing_spec.coffee                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_passing_spec.coffee...                                                   (1 of 1) 


  simple passing spec
    ✓ passes


  1 passing

[mochawesome] Report JSON saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.json

[mochawesome] Report HTML saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.html


  (Results)

  ┌──────────────────────────────────────────┐
  │ Tests:        1                          │
  │ Passing:      1                          │
  │ Failing:      0                          │
  │ Pending:      0                          │
  │ Skipped:      0                          │
  │ Screenshots:  0                          │
  │ Video:        true                       │
  │ Duration:     X seconds                  │
  │ Spec Ran:     simple_passing_spec.coffee │
  └──────────────────────────────────────────┘


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔ simple_passing_spec.coffee                   Xs        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    All specs passed!                              Xs        1        1        -        -        -  

`

exports['e2e reporters mochawesome fails with mochawesome@2.3.1 npm custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_failing_hook_spec.coffee)                                          │
  │ Searched:   cypress/integration/simple_failing_hook_spec.coffee                                │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_failing_hook_spec.coffee...                                              (1 of 1) 


  simple failing hook spec
    beforeEach hooks
      1) "before each" hook for "never gets here"
    pending
      - is pending
    afterEach hooks
      ✓ runs this
      2) "after each" hook for "runs this"
    after hooks
      ✓ runs this
      ✓ fails on this
      3) "after all" hook for "fails on this"


  3 passing
  1 pending
  3 failing

  1) simple failing hook spec
       beforeEach hooks
         "before each" hook for "never gets here":
     Error: fail1

Because this error occurred during a 'before each' hook we are skipping the remaining tests in the current suite: 'beforeEach hooks'
      at stack trace line

  2) simple failing hook spec
       afterEach hooks
         "after each" hook for "runs this":
     Error: fail2

Because this error occurred during a 'after each' hook we are skipping the remaining tests in the current suite: 'afterEach hooks'
      at stack trace line

  3) simple failing hook spec
       after hooks
         "after all" hook for "fails on this":
     Error: fail3

Because this error occurred during a 'after all' hook we are skipping the remaining tests in the current suite: 'after hooks'
      at stack trace line



[mochawesome] Report JSON saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.json

[mochawesome] Report HTML saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.html


  (Results)

  ┌───────────────────────────────────────────────┐
  │ Tests:        6                               │
  │ Passing:      1                               │
  │ Failing:      3                               │
  │ Pending:      1                               │
  │ Skipped:      1                               │
  │ Screenshots:  3                               │
  │ Video:        true                            │
  │ Duration:     X seconds                       │
  │ Spec Ran:     simple_failing_hook_spec.coffee │
  └───────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- beforeEach hooks -- never gets here -- before each hook.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- afterEach hooks -- runs this -- after each hook.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- after hooks -- fails on this -- after all hook.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ simple_failing_hook_spec.coffee              Xs        6        1        3        1        1 │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        6        1        3        1        1  

`

exports['e2e reporters mochawesome passes with mochawesome@3.0.1 npm custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_passing_spec.coffee)                                               │
  │ Searched:   cypress/integration/simple_passing_spec.coffee                                     │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_passing_spec.coffee...                                                   (1 of 1) 


  simple passing spec
    ✓ passes


  1 passing

[mochawesome] Report JSON saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.json

[mochawesome] Report HTML saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.html


  (Results)

  ┌──────────────────────────────────────────┐
  │ Tests:        1                          │
  │ Passing:      1                          │
  │ Failing:      0                          │
  │ Pending:      0                          │
  │ Skipped:      0                          │
  │ Screenshots:  0                          │
  │ Video:        true                       │
  │ Duration:     X seconds                  │
  │ Spec Ran:     simple_passing_spec.coffee │
  └──────────────────────────────────────────┘


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✔ simple_passing_spec.coffee                   Xs        1        1        -        -        - │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    All specs passed!                              Xs        1        1        -        -        -  

`

exports['e2e reporters mochawesome fails with mochawesome@3.0.1 npm custom reporter 1'] = `
====================================================================================================

  (Run Starting)

  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ Cypress:    1.2.3                                                                              │
  │ Browser:    FooBrowser 88                                                                      │
  │ Specs:      1 found (simple_failing_hook_spec.coffee)                                          │
  │ Searched:   cypress/integration/simple_failing_hook_spec.coffee                                │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘


────────────────────────────────────────────────────────────────────────────────────────────────────
                                                                                                    
  Running: simple_failing_hook_spec.coffee...                                              (1 of 1) 


  simple failing hook spec
    beforeEach hooks
      1) "before each" hook for "never gets here"
    pending
      - is pending
    afterEach hooks
      ✓ runs this
      2) "after each" hook for "runs this"
    after hooks
      ✓ runs this
      ✓ fails on this
      3) "after all" hook for "fails on this"


  3 passing
  1 pending
  3 failing

  1) simple failing hook spec
       beforeEach hooks
         "before each" hook for "never gets here":
     Error: fail1

Because this error occurred during a 'before each' hook we are skipping the remaining tests in the current suite: 'beforeEach hooks'
      at stack trace line

  2) simple failing hook spec
       afterEach hooks
         "after each" hook for "runs this":
     Error: fail2

Because this error occurred during a 'after each' hook we are skipping the remaining tests in the current suite: 'afterEach hooks'
      at stack trace line

  3) simple failing hook spec
       after hooks
         "after all" hook for "fails on this":
     Error: fail3

Because this error occurred during a 'after all' hook we are skipping the remaining tests in the current suite: 'after hooks'
      at stack trace line



[mochawesome] Report JSON saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.json

[mochawesome] Report HTML saved to /foo/bar/.projects/e2e/mochawesome-report/mochawesome.html


  (Results)

  ┌───────────────────────────────────────────────┐
  │ Tests:        6                               │
  │ Passing:      1                               │
  │ Failing:      3                               │
  │ Pending:      1                               │
  │ Skipped:      1                               │
  │ Screenshots:  3                               │
  │ Video:        true                            │
  │ Duration:     X seconds                       │
  │ Spec Ran:     simple_failing_hook_spec.coffee │
  └───────────────────────────────────────────────┘


  (Screenshots)

  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- beforeEach hooks -- never gets here -- before each hook.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- afterEach hooks -- runs this -- after each hook.png (1280x720)
  - /foo/bar/.projects/e2e/cypress/screenshots/simple failing hook spec -- after hooks -- fails on this -- after all hook.png (1280x720)


  (Video)

  - Started processing:   Compressing to 32 CRF
  - Finished processing:  /foo/bar/.projects/e2e/cypress/videos/abc123.mp4 (X seconds)


====================================================================================================

  (Run Finished)


      Spec                                                Tests  Passing  Failing  Pending  Skipped 
  ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
  │ ✖ simple_failing_hook_spec.coffee              Xs        6        1        3        1        1 │
  └────────────────────────────────────────────────────────────────────────────────────────────────┘
    1 of 1 failed (100%)                           Xs        6        1        3        1        1  

`

exports['e2e reporters reports error when thrown from reporter 1'] = `Could not load reporter by name: reporters/throws.js

We searched for the reporter in these paths:

- /foo/bar/.projects/e2e/reporters/throws.js
- /foo/bar/.projects/e2e/node_modules/reporters/throws.js

The error we received was:

Error: this reporter threw an error
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line
    at stack trace line


Learn more at stack trace line
`

