class RubyRailsText < ApplicationRecord
    validates :genre, presence: true
    validates :image, presence: true
    validates :title, presence: true
    validates :content, presence: true
end
