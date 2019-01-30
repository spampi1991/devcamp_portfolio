class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby, -> { where(subtitle: "Ruby") }

  def self.java
    where(subtitle: "Java")
  end
end
