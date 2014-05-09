require 'icalendar'

class EventList < ActiveRecord::Base
  validates :uid, uniqueness: true

  has_many :events, :dependent => :destroy

  def to_ical
    cal = Icalendar::Calendar.new
    cal.x_wr_name = 'Massive Wallhack'
    events.each do |e|
      cal.add_event(e.to_ical)
    end
    cal.publish
    cal.to_ical
  end
end
