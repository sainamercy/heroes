class HeroesController < ApplicationController
   
    def index
        heroes = Heroe.all
        render json: heroes, status: 200
    end

    def show
        heroe = Heroe.find(params[:id])
        render json: heroe, status: 200
    end

end
