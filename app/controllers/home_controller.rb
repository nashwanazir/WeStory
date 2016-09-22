class HomeController < ApplicationController
  def index
    @stories = Story.limit(5)
  end
end
