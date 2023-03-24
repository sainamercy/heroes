class PowersController < ApplicationController
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
        render json: {message: 'Updated successfully'}, status: 200
    end

    private

    def power_params
        params.permit(:description, :name)
    end
end
