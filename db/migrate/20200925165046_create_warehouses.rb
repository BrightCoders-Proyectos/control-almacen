class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|
      t.integer :code
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
