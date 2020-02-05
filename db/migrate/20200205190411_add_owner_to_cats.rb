class AddOwnerToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :owner, :string
  end
end
