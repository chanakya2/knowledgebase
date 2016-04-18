class AddTaskToTaskType < ActiveRecord::Migration
  def change
    add_reference :task_types, :task, index: true
  end
end
