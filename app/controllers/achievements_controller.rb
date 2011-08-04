class AchievementsController < ApplicationController
  def index
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.create(params[:achievement])
    render :index
  end
end
