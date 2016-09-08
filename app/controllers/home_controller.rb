class HomeController < ApplicationController
  def index
    @stories=Story.all
   # @sentences= @stories.sentences.order(:sentence_number) if @stories.present?
  end 
  def stories
    @stories=Story.all
  end
  def new
    @story=Story.new
  end  
end
