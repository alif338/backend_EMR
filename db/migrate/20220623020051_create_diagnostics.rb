class CreateDiagnostics < ActiveRecord::Migration[7.0]
  def change
    create_table :diagnostics do |t|
      t.integer :record_id
      t.text :main_diag
      t.text :complicate_diag
      t.text :comorbid_diag

      t.timestamps
    end
  end
end
