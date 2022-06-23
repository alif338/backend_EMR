class CreateDiagnostics < ActiveRecord::Migration[7.0]
  def change
    create_table :diagnostics do |t|
      t.text :work_diag
      t.text :diff_diag
      t.integer :final_diag_id

      t.timestamps
    end
  end
end
