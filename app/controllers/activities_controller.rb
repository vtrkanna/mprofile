class ActivitiesController < ApplicationController

  def index
  end

  def new
  end

  def edit
  end

  def show
  end

  private
  def task_params
    params[:task].permit(:start_date, :end_date, :planned_hours, :status)
  end

end
