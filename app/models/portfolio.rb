class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby, -> { where(subtitle: "Ruby") }

  def self.java
    where(subtitle: "Java")
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= image_generator(height: 600, width: 400)
    self.thumb_image ||= image_generator(height: 350, width: 200)
  end

end
