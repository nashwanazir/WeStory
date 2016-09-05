class StoryController < ApplicationController
  def stories
    @stories=Story.all
  end
end
