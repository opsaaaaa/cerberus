class HomeController < ApplicationController
    def index
        render 'index', layout: 'home'
    end
end
