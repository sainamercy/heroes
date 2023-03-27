class ApplicationController < ActionController::API
    rescue_from StandardError, with: :standard_error

     # rescue all common errors
     def standard_error(exception)
        render json: {message: 'failed', data: { info: exception.message }}, status: :unprocessable_entity
    end
end
