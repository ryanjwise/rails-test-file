class CreateScaffs < ActiveRecord::Migration[6.1]
  def change
    create_table :scaffs do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
