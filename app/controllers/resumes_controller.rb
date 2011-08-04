class ResumesController < ApplicationController
  def index
    @resumes = current_user.resumes
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(params[:resume])
    current_user.resumes << @resume
    if @resume.save
      flash[:notice] = "Created Resume #{@resume.title}."
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def show
    @resumes = current_user.resumes
    @resume = Resume.find(params[:id])

  end

  def edit

  end
end
