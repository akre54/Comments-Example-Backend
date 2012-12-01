class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :profile_img_url

      t.timestamps
    end
  end
end
