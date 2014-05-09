require 'icalendar'

class Event < ActiveRecord::Base
  belongs_to :event_list



  def to_ical
    event_start = DateTime.parse(start)
    event_end = DateTime.parse(start) + length.minutes

    tzid = "Europe/Helsinki"

    e = Icalendar::Event.new
    e.dtstart = Icalendar::Values::DateTime.new event_start, 'tzid' => tzid
    e.dtend = Icalendar::Values::DateTime.new event_end, 'tzid' => tzid
    e.location = place
    e.summary = name
    e
  end
end