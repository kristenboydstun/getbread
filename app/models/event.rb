class Event < ActiveRecord::Base
  after_validation :generate_slug

  validates_presence_of :host_name
  validates_presence_of :host_email

  validates_presence_of :name

  has_many :claims, :dependent => :destroy
  has_many :items

  def generate_slug
    self.slug = SecureRandom.hex(10) until unique_token?
  end

  def to_param
    self.slug
  end

  def unique_token?
    self.class.count(:conditions => {:slug => self.slug}) == 0
  end

  def unclaimed_items
    unclaimed = []
    self.items.each do |item|
      unclaimed << item if item.claim_id.blank?
    end
    unclaimed
  end

end
