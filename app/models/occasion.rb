class Occasion < ActiveRecord::Base
  validates :name, presence: true

  has_and_belongs_to_many :items

  def to_s
    name
  end
end