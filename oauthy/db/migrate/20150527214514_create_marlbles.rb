class CreateMarlbles < ActiveRecord::Migration
  def change
    create_table :marlbles do |t|
      t.string :name
      t.string :color
      t.references :person, index: true

      t.timestamps
    end
  end
end
