class CreateClothes < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :size
      t.integer :user_id
      t.timestamps
    end
  end
end
