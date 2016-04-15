require 'active_support'

module Logidze
  # Add `has_logidze` method to AR::Base
  module HasLogidze
    extend ActiveSupport::Concern

    module ClassMethods # :nodoc:
      # rubocop:disable Style/PredicateName
      def has_logidze
        include Logidze::Model
      end
    end
  end
end