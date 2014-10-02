class AddDayToDailyExercise < ActiveRecord::Migration
  def change
    add_column :daily_exercises, :day, :date
  end
end
