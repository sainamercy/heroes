class HeroesController < ApplicationController

    def index
        heroes = Heroe.all
        render json: heroes, status: 200
    end
end
