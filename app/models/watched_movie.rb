class WatchedMovie < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :movie, dependent: :destroy

  belongs_to :movie
  belongs_to :user
end
