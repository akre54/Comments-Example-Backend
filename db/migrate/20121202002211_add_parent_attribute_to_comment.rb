class AddParentAttributeToComment < ActiveRecord::Migration
  def change
    add_column :comments, :parent, :integer
  end
end
