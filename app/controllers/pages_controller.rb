class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @articles = Article.all
    @info = Info.new
  end

  def agence
    @articles = Article.all
  end

end
