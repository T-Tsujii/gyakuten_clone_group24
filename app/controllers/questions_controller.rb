class QuestionsController < ApplicationController

    def index
      if flash[:params].blank?
        @questions = Question.all
        @question = Question.new
      else
        @questions = Question.all
        @question = Question.new(flash[:params])
      end
    end

    def create
      post = Question.new(question_params)
      if post.save
        redirect_to questions_path, notice: "質問を受け付けました。" and return
      else
        redirect_to questions_path, flash: {params: question_params, alert: "必須項目は全て入力してください。"}
      end
    end

    def show
        @question = Question.find(params[:id])
    end


    private

    def question_params
      params.require(:question).permit(:title, :detail)
    end
end