class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  has_many :posts

  def owns?(post)
    post.user_id == self.id
  end

end
