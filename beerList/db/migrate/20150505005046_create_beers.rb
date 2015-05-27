class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :brewery
      t.string :name
      t.integer :rating
      t.date :date
      t.text :comments

      t.timestamps
    end
  end
end
