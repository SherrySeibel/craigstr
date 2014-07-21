class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :image_url
      t.string :category
      t.string :region
      t.boolean :spam, default: false
      t.belongs_to :user, null: :false

      t.timestamps null: false
    end
    add_index :posts, :user_id, unique: true
  end
end
