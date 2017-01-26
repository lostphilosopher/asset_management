class UserHasOneMember < ActiveRecord::Migration[5.0]
  def change
    add_reference :members, :user, index: true
  end
end
