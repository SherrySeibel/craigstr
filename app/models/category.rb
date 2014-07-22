class Category <ActiveRecord::Base
  has_many :posts
  belongs_to :region
  validates :name, presence: true, uniqueness: { scope: [:region_id] }
end