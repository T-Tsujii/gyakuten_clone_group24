class WatchedAllMovie < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :all_movie, dependent: :destroy
end
