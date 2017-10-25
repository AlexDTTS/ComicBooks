class RemoveQunatityFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :qunatity, :integer
  end
end
