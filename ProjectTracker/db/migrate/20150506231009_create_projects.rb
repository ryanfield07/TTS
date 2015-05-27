class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :desc
      t.string :status
      t.string :manager

      t.timestamps
    end
  end
end
