class ClaimItem < ActiveRecord::Base
  belongs_to :claim
  belongs_to :item
end
