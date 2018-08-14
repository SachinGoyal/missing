class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.references :profile, foreign_key: true
      t.string :tittle
      t.string :description

      t.timestamps
    end
  end
end
