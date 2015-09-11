class SubtasksController < ApplicationController
  before_action :set_subtask

  def toggle
    @subtask.toggle!(:completed)
  end

  private

  def set_subtask
    @subtask = Subtask.find(params[:id])
  end
end