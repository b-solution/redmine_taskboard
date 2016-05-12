class TaskBoardList < ActiveRecord::Base
  unloadable
  belongs_to :user
  belongs_to :task_board
end
