class Item < ActiveRecord::Base
  belongs_to :claim

  validates_presence_of :name
end
