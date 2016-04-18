class AddTaskToApplication < ActiveRecord::Migration
  def change
    add_reference :applications, :task, index: true
  end
end
