class Item < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :price, presence: true
  validates :date, presence: true
end
