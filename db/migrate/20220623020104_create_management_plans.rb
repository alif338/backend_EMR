class CreateManagementPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :management_plans do |t|
      t.integer :record_id
      t.text :therapy_plan
      t.text :advanced_plan
      t.text :educational_plan

      t.timestamps
    end
  end
end
