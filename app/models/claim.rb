class Claim < ActiveRecord::Base
  has_many :claim_items
  has_many :items, through: :claim_items

  belongs_to :event
end
