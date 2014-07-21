class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false, default: ""
      t.string :description, null: false, default: ""
      t.string :image_url, null: false, default: ""
      t.string :category, null: false, default: ""
      t.string :region, null: false, default: ""
      t.boolean :spam, default: false, null: false
      t.belongs_to :user, null: :false

      t.timestamps null: false
    end
    add_index :posts, :user_id
  end
end
