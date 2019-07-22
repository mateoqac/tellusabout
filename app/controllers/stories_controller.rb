class StoriesController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def index
    @stories = Story.all
  end
  
  def create
    story = Story.create(strong_params.merge(user_id: current_user.id))
    
    if story.save
      flash[:success] = "Story created successfully"
      redirect_to root_path
    else
      @story = story
      render :new
    end
  end

  def new
    @story = Story.new
  end


  def strong_params
    params.require(:story).permit(:country, :state, :city, :weather_season, :title, :body, :user_id, :type_of_experience)
  end
end

