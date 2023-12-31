class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show

  end

  def new
    @task = Task.new # Needed to instantiate the form_with
  end

  def edit

  end

  def update

    @task.update(task_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to task_path(@task)
  end

  def destroy

    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  def create
    @task = Task.new(task_params)
    @task.save # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to task_path(@task)
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
