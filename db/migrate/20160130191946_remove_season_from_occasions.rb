class RemoveSeasonFromOccasions < ActiveRecord::Migration
  def change
    remove_column :occasions, :season, :string
  end
end
