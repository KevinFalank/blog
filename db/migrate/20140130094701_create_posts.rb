class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.string :image, default: "/images/default.png"
      t.timestamps
    end
  end
end
