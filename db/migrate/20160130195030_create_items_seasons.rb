class CreateItemsSeasons < ActiveRecord::Migration
  def change
    create_table :items_seasons do |t|
      t.integer :item_id
      t.integer :season_id
    end
  end
end
