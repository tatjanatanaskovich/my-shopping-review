class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.datetime :date

      t.timestamps null: false
    end
  end
end
