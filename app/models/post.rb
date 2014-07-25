class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :region_id, presence: true
  validates :user_id, presence: true
  validates :spam, inclusion: [true, false]

  belongs_to :user
  belongs_to :category
  belongs_to :region
  def mark_as_spam
    update_attribute(:spam, true)
  end
end
