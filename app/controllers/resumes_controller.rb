class ResumesController < ApplicationController
  def index
    @resumes = current_user.resumes
  end

  def new
    @resume = Resume.new
    @achievements = current_user.achievements
  end

  def create
    @resume = Resume.new(params[:resume])
    current_user.resumes << @resume
    if @resume.save
      flash[:notice] = "Created Resume #{@resume.title}."
      redirect_to edit_resume_path(@resume)
    else
      render :action => 'new'
    end
  end

  def show
    @resumes = current_user.resumes
    @resume = Resume.find(params[:id])
  end

  def edit
    @resume = Resume.find(params[:id])
    session[:current_resume] = params[:id]
    @achievements = current_user.achievements
  end

  def update
    
  end

  def add_achievement
    @achievement = Achievement.find(params[:id])
    @resume = Resume.find(session[:current_resume])
    @resume.achievements.build unless @resume.achievements
    @resume.achievements << @achievement
    @resume.save
    render :partial => "resumes/template"
  end
end
