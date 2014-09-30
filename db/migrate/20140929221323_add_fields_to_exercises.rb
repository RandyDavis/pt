class AddFieldsToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :difficulty, :integer
  end
end
