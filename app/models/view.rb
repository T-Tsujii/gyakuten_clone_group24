class View < ApplicationRecord
  validates :user_id, presence: true, uniqueness: {scope: :question_id}
  validates :question_id, presence: true

  belongs_to :user
  belongs_to :question
end
