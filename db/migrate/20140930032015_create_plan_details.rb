class CreatePlanDetails < ActiveRecord::Migration
  def change
    create_table :plan_details do |t|
      t.integer :plan_id
      t.integer :exercise_id
      t.integer :sets
      t.integer :reps
      t.boolean :complete, :default => false

      t.timestamps null: false
    end
  end
end
