class CreateRecordLists < ActiveRecord::Migration[7.0]
  def change
    create_table :record_lists do |t|
      t.integer :patient_id
      t.integer :record_id

      t.timestamps
    end
  end
end
