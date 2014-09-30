class CreateDailyExercises < ActiveRecord::Migration
  def change
    create_table :daily_exercises do |t|
      t.references :plan_detail
      t.references :day
      t.timestamps null: false
    end
  end
end
