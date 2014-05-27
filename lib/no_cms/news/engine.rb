require 'globalize'
require 'friendly_id'
require "friendly_id/globalize"
module NoCms::News
  class Engine < ::Rails::Engine
    isolate_namespace NoCms::News
  end
end
