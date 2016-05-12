class TaskBoardController < ApplicationController
  unloadable
  before_filter :find_project

  def index

  end

  def init
    respond_to do |format|
      format.js{
        @taskboards = TaskBoard.
            where(project_id: @project.id).
            where(user_id: User.current.id).first
      }
    end
  end


  def save
    taskboard = TaskBoard.where(project_id: @project.id,
                                 user_id: User.current.id).first_or_initialize

    taskboard.todos= params[:todos]

    taskboard.save

    render js: "saved= true"
  end


  private

  def find_project
    @project = Project.find params[:project_id]
  rescue ActiveRecord::RecordNotFound
    render_404
  end

end
