class JobsController < ApplicationController
  require 'action_view'
  include ActionView::Helpers::DateHelper

  def new
    @job = Job.new
  end

  def index
    @jobs = Job.all
  end

  def create
    @job = Job.new

    if @job.save
      redirect_to @job
    else
      render 'new'
    end
  end

  def show
    @job = Job.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:duration)
    end
end