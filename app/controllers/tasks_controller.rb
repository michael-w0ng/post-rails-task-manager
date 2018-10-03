class TasksController < ApplicationController
  # CRUD
  # list all tasks
  def index
    @tasks = Task.all
  end
  # view details of a specific task
  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end
  # add a task
  def create
    @task = Task.create(params[:id])
    redirect_to tasks_path
  end
  # edit a task
  def update
    @task = Task.update(params[:id])
  end
  # remove a task
  def destory
    @task.destory
    redirect_to tasks_paths
  end
end
