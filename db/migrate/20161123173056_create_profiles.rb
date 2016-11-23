class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      #profil pripada useru, pa se strani kljuc stavlja u ovu tabelu

      t.string :first_name
      t.string :last_name
      t.boolean :gender
      t.datetime :date_of_birth
      #t.timestamps ({:null => false})
      t.timestamps null: false
    end
  end
end
