class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby, -> { where(subtitle: "Ruby") }

  def self.java
    where(subtitle: "Java")
  end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400.png"
    self.thumb_image ||= "https://via.placeholder.com/350x200.png"
  end

end
