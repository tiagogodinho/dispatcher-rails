require 'rails/engine'

module Dispatcher
  module Rails
    class Engine < ::Rails::Engine
      initializer 'dispatcher-rails.include_helper' do
        ActionView::Base.send :include, Dispatcher::Rails::ApplicationHelper
      end
    end
  end
end
