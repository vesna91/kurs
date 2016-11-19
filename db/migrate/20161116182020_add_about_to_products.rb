class AddAboutToProducts < ActiveRecord::Migration
  def change
    add_column :products, :about, :string  #null: false znaci da mora imati vr ne smije biti prazno

    Product.all.each do |p|
      p.update(about: 'Some random text ...')
    end
  end
end
