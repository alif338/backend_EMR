class CreateDiagnostics < ActiveRecord::Migration[7.0]
  def change
    create_table :diagnostics do |t|
      t.integer :record_id
      t.text :work_diag
      t.text :diff_diag

      t.timestamps
    end
  end
end
