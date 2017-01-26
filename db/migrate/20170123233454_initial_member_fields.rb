class InitialMemberFields < ActiveRecord::Migration[5.0]
  def change
    add_column :members, :first_name, :string
    add_column :members, :last_name, :string
    add_column :members, :email, :string
    add_column :members, :phone, :string
    add_column :members, :address, :string
  end
end
