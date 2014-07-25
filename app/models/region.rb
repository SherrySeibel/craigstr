class Region < ActiveRecord::Base
  has_many :categories
  has_many :posts, through: :categories

  validates :name, presence: true, uniqueness: true
end
