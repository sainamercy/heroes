class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    def index
        heroes = Heroe.all
        render json: {data: heroes}, status: 200
    end

    def show
        heroe = Heroe.find(params[:id])
        render json: {data: heroe}, status: 200
    end


    def not_found
        render json: { error: 'Restaurant not found' }, status: :not_found
    end
end
