class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    
    def index
        powers = Power.all
        render json: powers, status: 200
    end

    def show
        power = Power.find(params[:id])
        render json: power, status: 200
    end

    def update
        power = Power.find(params[:id]).update(power_params)
        if power
            render json: {message: 'Updated successfully'}, status: 200
        else
            render json: {message: 'failed', data: { info: 'something went wrong. could not update power' } }, status: :unprocessable_entity
        end
        
    end

    private

    def power_params
        params.permit(:description, :name)
    end

    def not_found
        render json: { error: 'Power not found' }, status: :not_found
    end
end
