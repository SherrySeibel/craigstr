class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.belongs_to :region, null: false
    end

    add_index :categories, [:name, :region_id], unique: true
  end
end