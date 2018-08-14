class CreateOrphans < ActiveRecord::Migration[5.1]
  def change
    create_table :orphans do |t|
      t.references :profile, foreign_key: true
      t.string :video
      t.string :description
      t.string :latitude
      t.string :longitude
      t.string :address
      t.string :pincode
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
