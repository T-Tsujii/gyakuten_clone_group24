class AllMovie < ApplicationRecord
    validates :title, presence: true
    validates :url, presence: true

    belongs_to :user
    has_many :watched_all_movies

    def watched_all_movie_by?(user)
        watched_all_movies.where(user_id: user.id).exists?
    end
    
end
