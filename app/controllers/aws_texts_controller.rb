class AwsTextsController < ApplicationController
    before_action :authenticate_user!

    def index
        @aws_texts = AwsText.all
    end

end