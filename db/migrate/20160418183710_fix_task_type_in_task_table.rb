class FixTaskTypeInTaskTable < ActiveRecord::Migration
  def change
    rename_column :tasks, :task_type, :task_type_info
  end
end
