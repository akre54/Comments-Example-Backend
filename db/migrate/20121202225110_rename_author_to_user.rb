class RenameAuthorToUser < ActiveRecord::Migration
  def change
    rename_table :authors, :users
  end
end
