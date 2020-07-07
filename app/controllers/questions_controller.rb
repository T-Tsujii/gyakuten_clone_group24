class QuestionsController < ApplicationController
    before_action :authenticate_user!

    def index
        @questions = Question.all
        # time = @questions.created_at
        # @created_time = time.strftime("%Y 年%m 月%d 日")
    end

end