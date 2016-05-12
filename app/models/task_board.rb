class TaskBoard < ActiveRecord::Base
  unloadable
  belongs_to :user
  belongs_to :project
  has_many :task_board_lists, dependent: :destroy

  def lists
    task_board_lists
  end

end
