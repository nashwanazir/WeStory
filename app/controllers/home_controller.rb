class HomeController < ApplicationController
  def index
    @story= Story.first
    @sentences= @story.sentences.order(:sentence_number) if @story.present?
  end  
end
