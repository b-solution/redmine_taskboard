class CreateTaskBoards < ActiveRecord::Migration
  def change
    create_table :task_boards do |t|

      t.integer :user_id

      t.integer :project_id

      t.text :todos


    end

  end
end
