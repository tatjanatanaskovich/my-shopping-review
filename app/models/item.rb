class Item < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, length: {minimum: 3, maximum: 50}
  validates :price, presence: true
  validates :date, presence: true
  validates :user_id, presence: true
end
