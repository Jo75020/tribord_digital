class InfosController < ApplicationController

  def create
    @info = Info.new(info_params)
    @info.save
    redirect_to root_path
  end


  private

  def info_params
    params.require(:info).permit(:email)
  end

end
