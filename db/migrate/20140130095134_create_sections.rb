class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :post_id, null: false
      t.integer :tag_id, null: false
      t.timestamps
    end
  end
end
