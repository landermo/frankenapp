class Post < ActiveRecord::Base
  belongs_to :author

  has_many :favorites
  has_many :followers, through: :favorites, source: :user
  # def followers
  #   user_ids = Favorite.where(post_id: id).pluck :user_id
  #   User.where(id: user_ids)
  # end

  def is_favorited?(user)
    Favorite.find_by(user_id user,post_id :id) !=nil
  end
end
