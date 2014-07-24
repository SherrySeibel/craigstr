class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :category, presence: true
  validates :region, presence: true
  validates :user_id, presence: true
  validates :spam, inclusion: [true, false]

  belongs_to :user

  def mark_as_spam
    update_attribute(:spam, true)
  end
end