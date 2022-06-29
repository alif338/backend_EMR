class CreateMedicineReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :medicine_receipts do |t|
      t.string :date_time
      t.integer :patient_id
      t.text :medicine_receipt
      t.string :written_by

      t.timestamps
    end
  end
end
