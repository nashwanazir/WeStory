class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end
  
  def new
    @story = Story.new
    @story.sentences.build
  end
  
  def story_params
    params.require(:story).permit(:title, :sentences)
  end
   
  def create
    @story = Story.new(params[story_params])
    if @story.save
      redirect_to action: 'index'
    else
      render action: "new"
    end
  end
  
  def show
    @story = Story.find(params[:id])
  end
end
