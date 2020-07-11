class SolutionsController < ApplicationController

    def index
        @question = Question.find(params[:id])
    end

    def create
        @solution = Solution.new(solution_params)
        @solution.question_id = params[:question_id]
        @solution.save
        redirect_to questions_path
    end
      
    private
        def solution_params
            params.require(:solution).permit(:answer)
        end
end