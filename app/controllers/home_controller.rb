class HomeController < ApplicationController
  def index
    @stories=Story.all
  end 
  def new
    @story=Story.new
  end 
end  