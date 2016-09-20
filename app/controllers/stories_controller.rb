class StoriesController < ApplicationController
  def index
    @stories=Story.all
  end
  
  def new
    @story=Story.new
    @story.sentences.build
  end 
  
  def create
  end  
  
end
