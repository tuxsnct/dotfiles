-- Base
require("base")
require("helpers")

-- Error handling
require("error")

-- Variable definitions
require("variables")

-- Wibar
require("layouts/bar")

-- Mouse bindings
require("bindings/globalbuttons")
require("bindings/clientbuttons")

-- Key bindings
require("bindings/globalkeys")
require("bindings/clientkeys")
root.keys(globalkeys)

-- Rules
require("rules")

-- Signals
require("signals")

-- Autostart
require("autostart")

