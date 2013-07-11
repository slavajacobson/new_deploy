class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :image
      t.text :name
      t.timestamps
    end
  end
end
