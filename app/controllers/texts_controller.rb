class TextsController < ApplicationController
  def index
    @q = Text.ransack(params[:q])
    @texts = @q.result
    @text = "こちら"
  end

  def show
    @text = Text.find(params[:id])
  end
end
