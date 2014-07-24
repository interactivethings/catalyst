# PhantomCSS requires PhantomJS and CasperJS, can use Brew to install both:
# $ brew install phantomjs
# $ brew install casperjs --devel

phantomcss  = require("./../../node_modules/phantomcss/phantomcss.js")
phantomcss.init

  # Paths
  libraryRoot             : "./node_modules/phantomcss"

  screenshotRoot          : "./test/blueprints"   # Folder with GIT-staged comparison Blueprints
  comparisonResultRoot    : "./test/results"      # Folder for temporary test results
  failedComparisonsRoot   : "./test/failures"     # Folder for test failures

  # Options
  addLabelToFailedImage   : false                 # Don't add label to generated failure image
  cleanupComparisonImages : true                  # Cleanup results folder after test
  mismatchTolerance       : 0.00                  # Mismatch tolerance defaults to 0.05%

  # Callbacks
  # onPass: passCallback = ->
  # onFail: failCallback = ->
  # onTimeout: timeoutCallback = ->
  # onComplete: completeCallback = ->

  outputSettings:
    errorColor:
      red: 137
      green: 254
      blue: 184
    errorType: "movement"
    transparency: 0.3

casper.start "test/grid.html"
casper.viewport 1024, 768

casper.then ->
  @echo "CURRENTLY TESTING: " + @getTitle()
  phantomcss.screenshot "body", "grid" # where (selector, filename)

casper.then ->
  phantomcss.compareAll()

casper.then ->
  casper.test.done()

casper.run ->
  phantom.exit phantomcss.getExitStatus()