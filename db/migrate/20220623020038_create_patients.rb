class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :religion
      t.string :education
      t.string :job_profession
      t.string :alergical_hist
      t.string :member_type
      t.string :no_medical_record

      t.timestamps
    end
  end
end
