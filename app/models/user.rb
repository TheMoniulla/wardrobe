class User < ActiveRecord::Base
  validates :name, presence: true

  has_many :items, inverse_of: :user

  def to_s
    name
  end
end