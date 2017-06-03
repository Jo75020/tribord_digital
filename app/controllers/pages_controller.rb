class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :agence ]

  def home
    @articles = Article.all
    @info = Info.new
  end

  def agence
    @info = Info.new
    @articles = Article.all
    @instagram = open("https://api.instagram.com/v1/users/self/media/recent/?access_token=503524293.e52e6e5.dbad145197684c509fe9ec90ac2520cf")
    @instagram.each do |i|
     @result = JSON.parse(i)
     @data = @result["data"]
    end
  end

end
