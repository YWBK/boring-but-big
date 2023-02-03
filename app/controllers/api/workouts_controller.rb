class Api::UsersController < ApplicationController
    def create
    end

    def show
    end

    def index
    end

    def update
    end

    private
    def workout_params
        params.require(:workout).permit(:user_id, :program_id, :status, :day, :week, :cycle)
    end
end
