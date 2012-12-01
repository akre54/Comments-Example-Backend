class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.string :qualification
      t.text :content

      t.timestamps
    end
  end
end
