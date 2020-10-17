require "bundler"
Bundler.setup

require "adhearsion"
Bundler.require(:default, Adhearsion.environment)

$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))
require "encrypted_credentials"
require "adhearsion-twilio"

require_relative "app_settings"
Dir[__dir__ + "/../app/models/**/*.rb"].sort.each { |f| require f }
Dir[__dir__ + "/initializers/**/*.rb"].sort.each { |f| require f }

$LOAD_PATH.unshift(File.expand_path(File.join(File.dirname(__FILE__), "../app/")))
