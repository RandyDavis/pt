class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.integer :trainer_id
      t.integer :client_id
      t.integer :plan_detail_id

      t.timestamps null: false
    end
  end
end
