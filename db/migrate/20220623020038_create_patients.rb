class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :no_reg
      t.string :religion
      t.string :education
      t.string :job_profession
      t.string :person_responsible
      t.string :payment_type

      t.timestamps
    end
  end
end
