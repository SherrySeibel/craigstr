class Region < ActiveRecord::Base
  has_many :categories

  validates :name, presence: true, uniqueness: true
end