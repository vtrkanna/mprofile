class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def show
    @task = Task.find(params[:id])
  end

  private
  def task_params
    params[:task].permit(:start_date, :end_date, :planned_hours, :status)
  end

end
