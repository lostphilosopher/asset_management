class InitialOrganizationFields < ActiveRecord::Migration[5.0]
  def change
    add_column :organizations, :name, :string, null: false
  end
end
