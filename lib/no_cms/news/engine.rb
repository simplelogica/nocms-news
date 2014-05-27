require 'globalize'
require 'friendly_id'

module NoCms::News
  class Engine < ::Rails::Engine
    isolate_namespace NoCms::News
  end
end
