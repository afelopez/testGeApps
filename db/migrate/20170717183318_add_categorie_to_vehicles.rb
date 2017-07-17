class AddCategorieToVehicles < ActiveRecord::Migration[5.1]
  def change
    add_column :vehicles, :categorie, :integer
  end
end
