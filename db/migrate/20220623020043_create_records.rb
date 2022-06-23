class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :date_time
      t.integer :anamnesa_id
      t.integer :physics_support_check_id
      t.integer :diagnostic_id
      t.integer :management_plan_id
      t.integer :remedy_action_id

      t.timestamps
    end
  end
end
