# Require dependencies
# --------------------

phantomcss  = require("./../../node_modules/phantomcss/phantomcss.js")
testFiles   = ["grid","spaces","utilities", "visibility"]
testEnvs    = ["640,1136","1024,768","1440,900"]

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
      red: 228
      green: 28
      blue: 113
    errorType: "movement"
    transparency: 0.3

# Define Test scenarios
# --------------------

config = [
  {name: "grid", path: "test/grid.html", viewports: [1440, 1024, 640]}
  {name: "spaces", path: "test/spaces.html", viewports: [1440, 1024, 640]}
  {name: "utilities", path: "test/utilities.html", viewports: [1440, 1024, 640]}
  {name: "visibility", path: "test/visibility.html", viewports: [1440, 1024, 640]}
]

scenarios = config.reduce(((acc, scenario) ->
  acc.concat scenario.viewports.map (viewportWidth) ->
    ->
      @echo scenario.name
      @start scenario.path, ->
        @echo "CURRENTLY TESTING: " + (@getTitle())
      @viewport viewportWidth, 600
      @then ->
        phantomcss.screenshot "body", "#{scenario.name}-#{viewportWidth}" # where (selector, filename)
      @then ->
        phantomcss.compareAll()
  ), [])

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