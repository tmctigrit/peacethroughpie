class Event < ActiveRecord::Base
  belongs_to :planner, :class_name => 'User', :foreign_key => 'planner_id'
  has_many :rsvps
  has_many :guests, :source => :user, :through => :rsvps
  # belongs_to :user

  def guest_count
    people = Rsvp.where(event_id: self.id)
    count = people.count
    rsvps.each { |r| count += r.extras }
    count
  end
end
