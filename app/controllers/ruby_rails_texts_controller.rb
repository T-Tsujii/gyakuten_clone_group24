class RubyRailsTextsController < ApplicationController

    def index
        @ruby_rails_texts = RubyRailsText.all
    end

end