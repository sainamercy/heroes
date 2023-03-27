class HeroePowersController < ApplicationController

    def create
        heroe_power =HeroePower.create(heroe_power_params)
        if heroe_power.valid?
            render json: { message: 'successfully created', data: heroe_power}, status: :created
        else
            render json: { message: 'failed to create' }, status: :unprocessable_entity 
        end    
    end

    private

    def heroe_power_params
        params.permit(:strength, :power_id, :heroe_id)
    end
end
