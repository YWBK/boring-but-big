class Api::ProgramsController < ApplicationController
  def index
      @programs = Program.all
      render json: Api::Programs::ProgramsPresenter.new(@programs)
  end

  def show
      @program = Program.find(params[:id])
      if @program
          render json: Api::Programs::ProgramPresenter.new(@program)
      else
          render json: ['Program not found'], status: 404
      end
  end

  private
  def program_params
      params.require(:program).permit(:name)
  end
end
