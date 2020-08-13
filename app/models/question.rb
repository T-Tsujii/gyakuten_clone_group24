class Question < ApplicationRecord
    validates :title, presence: true
    validates :detail, presence: true

    has_many :solutions, dependent: :destroy
    has_many :views, dependent: :destroy
end
