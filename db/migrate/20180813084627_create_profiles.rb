class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :age
      t.string :gender
      t.string :address
      t.boolean :share_detail, default: false
      t.timestamps
    end
  end
end
