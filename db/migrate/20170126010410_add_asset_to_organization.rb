class AddAssetToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_reference :assets, :organization, index: true
  end
end
