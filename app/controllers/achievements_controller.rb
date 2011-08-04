class AchievementsController < ApplicationController
  def index
    @achievement = Achievement.new
    @achievements = current_user.achievements
  end

  def create
    @achievement = Achievement.new(params[:achievement].merge(:user_id => current_user.id))
    if @achievement.save
      redirect_to :achievements, notice: 'Achievement created successfully.'
    else
      redirect_to :achievements
    end
  end

end
