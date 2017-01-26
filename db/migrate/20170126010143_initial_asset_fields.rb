class InitialAssetFields < ActiveRecord::Migration[5.0]
  def change
    add_column :assets, :name, :string
    add_column :assets, :description, :string
  end
end
