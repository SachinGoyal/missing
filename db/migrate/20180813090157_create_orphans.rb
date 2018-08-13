class CreateOrphans < ActiveRecord::Migration[5.1]
  def change
    create_table :orphans do |t|
      t.references :user, foreign_key: true
      t.string :image
      t.string :video
      t.string :description
      t.string :lat
      t.string :long
      t.string :address
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
