module Placeholder
  extend ActiveSupport::Concern

  included do
    def image_generator(height:, width:)
      "https://via.placeholder.com/#{height}x#{width}.png"
    end
  end
end
