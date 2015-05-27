class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :newname

      t.timestamps
    end
  end
end
