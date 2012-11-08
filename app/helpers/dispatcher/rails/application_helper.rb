module Dispatcher
  module Rails
    module ApplicationHelper
      def dispatcher_tag
        tag :meta, name: 'page', content: controller_action_string
      end

      def body_tag(options = {}, &block)
        options = options.merge(class: controller_action_string)
        content_tag :body, options do
          yield
        end
      end

    private
      def controller_action_string
        controller_name = controller.class.name.underscore
        controller_name.gsub!(/\//, "_")
        controller_name.gsub!(/_controller$/, "")

        "#{controller_name}##{controller.action_name}"
      end
    end
  end
end
