class Claim < ActiveRecord::Base
  has_many :items
  belongs_to :event
end
