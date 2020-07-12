class SolutionsController < ApplicationController

    def create
        @solution = Solution.new(solution_params)
        @solution.question_id = params[:question_id]
        if @solution.save
            redirect_to question_path(@solution.question.id)
        else
            flash[:alert] = "回答文を入力してください"
            redirect_to question_path(@solution.question.id)
        end
    end
      
    private
        def solution_params
            params.require(:solution).permit(:answer)
        end
end