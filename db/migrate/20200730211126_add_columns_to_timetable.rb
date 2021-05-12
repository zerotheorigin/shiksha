class AddColumnsToTimetable < ActiveRecord::Migration[6.0]
  def change
    add_column :timetables, :start_time, :time
    add_column :timetables, :end_time, :time
  end
end
