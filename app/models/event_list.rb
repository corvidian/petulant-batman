require 'icalendar'

class EventList < ActiveRecord::Base
  has_many :events, :dependent => :destroy

  def to_ical
    cal = Icalendar::Calendar.new
    events.each do |e|
      cal.add_event(e.to_ical)
    end
    cal.publish
    cal.to_ical
  end
end
