class CreateFinalDiags < ActiveRecord::Migration[7.0]
  def change
    create_table :final_diags do |t|
      t.integer :diagnostic_id
      t.text :main_diag
      t.text :complicate_diag
      t.text :comorbid_diag

      t.timestamps
    end
  end
end
