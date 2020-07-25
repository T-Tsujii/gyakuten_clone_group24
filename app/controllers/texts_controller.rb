class TextsController < ApplicationController
  def index
    @texts = Text.all
    @text = Text.new
  end

  def show
    @text = Text.find(params[:id])
  end

end
