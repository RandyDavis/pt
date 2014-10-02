class RemoveFieldFromDailyExercises < ActiveRecord::Migration
  def change
    remove_column :daily_exercises, :plan_detail_id, :integer
  end
end
