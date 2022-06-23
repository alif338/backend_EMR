class CreatePhysicsSupportChecks < ActiveRecord::Migration[7.0]
  def change
    create_table :physics_support_checks do |t|
      t.text :physics_check
      t.text :support_check

      t.timestamps
    end
  end
end
