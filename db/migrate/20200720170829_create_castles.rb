class CreateCastles < ActiveRecord::Migration[6.0]
  def change
    create_table :castles do |t|
      t.string :img
      t.string :name
      t.integer :price
      t.text :details
      t.string :city
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
