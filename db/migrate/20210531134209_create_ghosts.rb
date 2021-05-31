class CreateGhosts < ActiveRecord::Migration[6.0]
  def change
    create_table :ghosts do |t|
      t.string :name
      t.text :description
      t.string :category
      t.integer :age
      t.integer :rate
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
