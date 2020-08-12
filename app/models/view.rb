class View < ApplicationRecord
  validates :user_id, presence: true, uniqueness: true
  validates :question_id, presence: true

  belongs_to :user
  belongs_to :question
end
