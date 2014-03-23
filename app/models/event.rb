class Event < ActiveRecord::Base
  before_save :generate_slug

  #validates_presence_of :host_name
  #validates_presence_of :host_email

  validates_presence_of :name

  geocoded_by :location
  after_validation :geocode

  has_many :claims, :dependent => :destroy
  has_many :items, through: :claims

  def generate_slug
    self.slug = SecureRandom.hex(10)
  end

  def to_param
    self.slug
  end

  def unique_token?
    return true if self.class.count == 0
    self.class.count(:conditions => {:slug => self.slug}) == 0
  end

  def untaken_items
    untaken_claim.items
  end

  def taken_claims
    claims.select { |claim| claim.username != nil }
  end

  def untaken_claim
    untaken = claims.find_by(username: nil)
    untaken = Claim.create(event: self) if untaken.nil?
    untaken
  end

end
