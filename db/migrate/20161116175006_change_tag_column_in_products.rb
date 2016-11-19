class ChangeTagColumnInProducts < ActiveRecord::Migration
  #def change
  #   change_column :products, :tag, :string
  #end ne radi se jer se ne moze uraditi rollback active records ne pamti prethodno stanje
  def up
    change_column :products, :tag, :string
  end

  def down
    change_column :products, :tag, :integer
  end
end
