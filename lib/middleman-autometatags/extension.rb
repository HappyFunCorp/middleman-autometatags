require 'middleman-autometatags/helpers'

module Middleman
  module Autometatags
    class << self
      def registered(app, options_hash = {}, &block)
        app.helpers Middleman::Autometatags::Helpers
      end
    end
  end
end