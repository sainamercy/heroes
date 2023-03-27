class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
   
    def index
        heroes = Heroe.all
        render json: heroes, status: 200
    end

    def show
        heroe = Heroe.find(params[:id])
        render json: heroe, status: 200
    end

    private
    def not_found
        render json: { error: 'Heroes not found' }, status: :not_found
    end
end
