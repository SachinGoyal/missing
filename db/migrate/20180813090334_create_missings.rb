class CreateMissings < ActiveRecord::Migration[5.1]
  def change
    create_table :missings do |t|
      t.references :profile, foreign_key: true
      t.string :name
      t.string :age
      t.string :height
      t.string :gender
      t.date :missing_date
      t.string :description
      t.boolean :active, default: false
      t.timestamps
    end
  end
end
