class Movie < ApplicationRecord
    validates :title, presence: true
    validates :url, presence: true

    has_many :watched_movies
end
