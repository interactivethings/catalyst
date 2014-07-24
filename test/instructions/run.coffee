# Require dependencies
# --------------------
phantomcss  = require("./../../node_modules/phantomcss/phantomcss.js")

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

# Define Test scenarios
# --------------------

scenarios = [
  ->
    @echo "Grid"
    @start "test/grid.html", ->
      @echo "CURRENTLY TESTING: " + (@getTitle())
    @viewport 1024, 768
    @then ->
      phantomcss.screenshot "body", "grid" # where (selector, filename)
    @then ->
      phantomcss.compareAll()

  ->
    @echo "Spaces"
    @viewport 1024, 768
    @start "test/spaces.html", ->
      @echo "CURRENTLY TESTING: " + (@getTitle())
    @then ->
      phantomcss.screenshot "body", "spaces" # where (selector, filename)
    @then ->
      phantomcss.compareAll()

  ->
    @echo "Utilities"
    @viewport 1024, 768
    @start "test/utilities.html", ->
      @echo "CURRENTLY TESTING: " + (@getTitle())
    @then ->
      phantomcss.screenshot "body", "utilities" # where (selector, filename)
    @then ->
      phantomcss.compareAll()

  ->
    @echo "Visibility"
    @viewport 1024, 768
    @start "test/visibility.html", ->
      @echo "CURRENTLY TESTING: " + (@getTitle())
    @then ->
      phantomcss.screenshot "body", "visibility" # where (selector, filename)
    @then ->
      phantomcss.compareAll()

]

casper.start()
casper.then ->
  @echo "Starting"

currentSuite = 0
check = ->
  if scenarios[currentSuite]
    scenarios[currentSuite].call this
    currentSuite++
    casper.run check
  else
    @echo "All done."
    @exit()

casper.run check

# # Define Test environment
# casper.start "test/grid.html"
# casper.viewport 1024, 768

# # Start the Test
# casper.then ->
#   @echo "CURRENTLY TESTING: " + @getTitle()
#   phantomcss.screenshot "body", "grid" # where (selector, filename)

# # Compare Test Results
# casper.then ->
#   phantomcss.compareAll()

# # End the Test
# casper.then ->
#   casper.test.done()
# casper.run ->
#   phantom.exit phantomcss.getExitStatus()