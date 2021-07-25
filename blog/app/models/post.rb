class Post < ApplicationRecord
  validates_presence_of :title, length: { minimum: 2 }
  validates_presence_of :author
  validates_presence_of :content
  validates_presence_of :image_url
  belongs_to :user
end
