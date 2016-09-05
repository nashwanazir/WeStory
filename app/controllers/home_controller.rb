class HomeController < ApplicationController
  def index
    @story1=Story.first
    @sentences1= @story1.sentences.order(:sentence_number) if @story1.present?
    @story2=Story.second
    @sentences2=@story2.sentences.order(:sentence_number) if @story2.present?
    @story3=Story.third
    @sentences3=@story3.sentences.order(:sentence_number) if @story3.present?
  end 
  
end
