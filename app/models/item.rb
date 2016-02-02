class Item < ActiveRecord::Base
  validates :name, :size, :user_id, presence: true

  belongs_to :user, inverse_of: :items
  has_and_belongs_to_many :occasions
  has_and_belongs_to_many :seasons

  def occasions_for_display
    for_display(occasions)
  end

  def seasons_for_display
    for_display(seasons)
  end

  private

  def for_display(array)
    array.map(&:name).join(', ')
  end
end