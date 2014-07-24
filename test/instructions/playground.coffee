
# Require dependencies
# --------------------
phantomcss                = require("./../../node_modules/phantomcss/phantomcss.js")

# Name Variables and Constants
# --------------------
testFilenames             = ["grid", "spaces", "utilities", "visibility"]
testEnvironments          = ["1024,768", "640,320"]

# Init PhantomCSS magic
# --------------------
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

  outputSettings:
    errorColor:
      red: 137
      green: 254
      blue: 184
    errorType: "movement"
    transparency: 0.3

# Run Test scenarios
# --------------------
testFilenames.forEach (entry) ->

  # Define Test environment
  casper.start ("test/" + entry + ".html")
  casper.viewport 1024, 768

  # Start the Test
  casper.then ->
    @echo "CURRENTLY TESTING: test/" + entry + ".html"
    phantomcss.screenshot "body", entry # where (selector, filename)

  # Compare Test Results
  casper.then ->
    phantomcss.compareAll()

  # End the Test
  casper.then ->
    casper.test.done()
  casper.run ->
    phantom.exit phantomcss.getExitStatus()