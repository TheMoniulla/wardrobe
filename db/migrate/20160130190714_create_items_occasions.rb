class CreateItemsOccasions < ActiveRecord::Migration
  def change
    create_table :items_occasions do |t|
      t.integer :item_id
      t.integer :occasion_id
    end
  end
end
