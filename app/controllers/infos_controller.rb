class InfosController < ApplicationController

  def create
    @info = Info.new(info_params)
    @info.save
    redirect_to :back
  end


  private

  def info_params
    params.require(:info).permit(:email)
  end

end
