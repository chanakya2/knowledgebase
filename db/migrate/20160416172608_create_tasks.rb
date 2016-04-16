class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :type
      t.string :assigned_to
      t.datetime :scheduled_start_date
      t.datetime :scheduled_end_date
      t.datetime :actual_start_date
      t.datetime :actual_end_date
      t.decimal :hours_worked
      t.text :resolution
      t.integer :level

      t.timestamps
    end
  end
end
