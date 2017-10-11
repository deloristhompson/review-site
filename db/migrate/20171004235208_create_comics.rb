class CreateComics < ActiveRecord::Migration[5.1]
  def change
    create_table :comics do |t|
      t.string :title, null: false
      t.string :illustrator
      t.string :publisher, null: false
      t.integer :year_published, null: false
      t.integer :ASIN
      t.string :condition, null: false

      t.timestamps
    end

    add_index :comics, :title, unique: true
    add_index :comics, :ASIN, unique: true
  end
end
