class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :category, presence: true
  validates :region, presence: true
  validates :user_id, presence: true
  validates :spam, presence: true

end