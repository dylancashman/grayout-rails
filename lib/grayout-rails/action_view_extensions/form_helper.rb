module GrayoutRails
  module ActionViewExtensions
    module FormHelper

      def grayout(options={})
        content_tag :div, :class => 'my_grayout_class' do
          yield
        end
      end
    end
  end
end

ActionView::Base.send :include, GrayoutRails::ActionViewExtensions::FormHelper