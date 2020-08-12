class QuestionsController < ApplicationController

    def index
      @questions = Question.order(id: :desc).includes(:views)
      @question = Question.new
    end

    def create
      @question = Question.new(question_params)
      if @question.save
        redirect_to questions_path, notice: "質問を受け付けました。"
      else
        @questions = Question.order(id: :desc)
        render :index
      end
    end

    def show
      @question = Question.find(params[:id])
      @solution = Solution.new
      if @question.views.find_by(user_id: current_user.id).blank?
        @question.views.create(user_id: current_user.id)
      end
    end

    def edit 
      @question = Question.find(params[:id])
    end

    def update
      @question = Question.find(params[:id])
      @question.update(question_params)
      flash[:notice] = "質問を修正しました"
      redirect_to questions_path
    end

    private

    def question_params
      params.require(:question).permit(:title, :detail)
    end
end