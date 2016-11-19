class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      #unos kolone prvi param je ime kolone drugi
      t.string :name #, {default:'IME', null:false} #active records mapira na varchar
      t.integer :price

      t.timestamps null: false #updated i created
    end
  end
end
