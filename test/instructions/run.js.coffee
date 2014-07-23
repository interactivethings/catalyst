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
  cleanupComparisonImages : true # TODO FIX
  mismatchTolerance       : 0.00
  addLabelToFailedImage   : true

  # Callbacks
  onPass: passCallback = ->
    console.log("\nAll files passed the test.")
  onFail: failCallback = ->
    console.log("\nOne or more files didn’t pass the test.")
  onTimeout: timeoutCallback = ->
    console.log("\nThat took a bit too long.")
  onComplete: completeCallback = ->
    console.log("You’re welcome.\n")

  outputSettings:
    errorColor:
      red: 255
      green: 255
      blue: 0
    errorType: "movement"
    transparency: 0.3

casper.start "test/grid.html"
casper.viewport 1024, 768

casper.then ->
  @echo "CURRENTLY TESTING: " + @getTitle()
  phantomcss.screenshot "body", "grid" # where (selector, filename)

casper.then now_check_the_screenshots = ->
  phantomcss.compareAll()

casper.then end_it = ->
  casper.test.done()

casper.run ->
  phantom.exit phantomcss.getExitStatus()