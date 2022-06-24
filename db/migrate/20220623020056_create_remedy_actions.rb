class CreateRemedyActions < ActiveRecord::Migration[7.0]
  def change
    create_table :remedy_actions do |t|
      t.integer :record_id
      t.text :remedy
      t.text :action

      t.timestamps
    end
  end
end
