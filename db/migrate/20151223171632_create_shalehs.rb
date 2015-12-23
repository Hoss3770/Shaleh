class CreateShalehs < ActiveRecord::Migration
  def change
    create_table :shalehs do |t|
      t.text :address
      t.integer :rooms
      t.text :description
      t.boolean :aircon
      t.belongs_to :seller

      t.timestamps null: false
    end
  end
end
