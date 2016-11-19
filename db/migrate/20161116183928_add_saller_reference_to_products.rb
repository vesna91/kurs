class AddSallerReferenceToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :seller, index: true
    # ,prvi podatak u koju tabelu , strani kljucevi se uvijek indeksiraju
  end
end
