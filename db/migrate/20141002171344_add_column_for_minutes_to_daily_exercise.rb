class AddColumnForMinutesToDailyExercise < ActiveRecord::Migration
  def change
    add_column :daily_exercises, :minutes, :integer
  end
end
