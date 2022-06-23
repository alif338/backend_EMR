class CreateAnemnesas < ActiveRecord::Migration[7.0]
  def change
    create_table :anemnesas do |t|
      t.text :main_complaint
      t.text :disease_hist_now
      t.text :disease_hist_old
      t.text :disease_hist_family

      t.timestamps
    end
  end
end
