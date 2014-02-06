class Menu < ActiveRecord::Base
  validates_presence_of :title
  has_many :item_menus
  has_many :items, through: :item_menus
end
