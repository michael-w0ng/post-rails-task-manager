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
    # task = Task.create(task_params)
    # task.save
    # redirect_to tasks_path
    Task.create(task_params)
    redirect_to tasks_path
  end
  # edit a task
  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end
  # remove a task
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
