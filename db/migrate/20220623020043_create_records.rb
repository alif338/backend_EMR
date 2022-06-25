class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :signature_name

      t.timestamps
    end
  end
end
