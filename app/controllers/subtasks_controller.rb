class SubtasksController < ApplicationController
  before_action :set_subtask, except: [:create]

  def toggle
    @subtask.toggle!(:completed)
  end

  def destroy
    @subtask.destroy
  end

  def create
    todo = Todo.find(params[:todo_id])
    todo.subtasks.create
    redirect_to todos_path
  end

  def update
    @subtask.update(subtask_params)
    redirect_to todos_path
  end

  private

  def subtask_params
    params.require(:subtask).permit(:title, :completed)
  end

  def set_subtask
    @subtask = Subtask.find(params[:id])
  end
end
