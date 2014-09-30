class AddFieldsToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :week_of, :date
    add_column :plans, :total_plans, :integer
  end
end
