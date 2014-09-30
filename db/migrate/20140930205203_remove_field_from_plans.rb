class RemoveFieldFromPlans < ActiveRecord::Migration
  def change
    remove_column :plans, :plan_detail_id, :integer
  end
end
