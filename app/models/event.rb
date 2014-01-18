class Event < ActiveRecord::Base
  validates_presence_of :host_name
  validates_presence_of :host_email
  validates_presence_of :start_date
  validates_presence_of :name
end
