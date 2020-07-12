class QuestionsController < ApplicationController

    def index
      @questions = Question.order(id: :desc)
      @question = Question.new
    end

    def create
      @question = Question.new(question_params)
      if @question.save
        redirect_to questions_path, notice: "質問を受け付けました。" and return
      else
        @questions = Question.order(id: :desc)
        flash.now[:alert] = "記入漏れがあります。"
        render :index
      end
    end

    def show
        @question = Question.find(params[:id])
        @solution = Solution.new
    end


    private

    def question_params
      params.require(:question).permit(:title, :detail)
    end
end