class CreateServiceLists < ActiveRecord::Migration[7.0]
  def change
    create_table :service_lists do |t|
      t.integer :record_id
      t.integer :service_id

      t.timestamps
    end
  end
end
