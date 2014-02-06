class Item < ActiveRecord::Base
  has_many :claim_items
  has_many :claims, through: :claim_items

  has_many :item_menus
  has_many :menus, through: :item_menus

  validates_presence_of :name
end
