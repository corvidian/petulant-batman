require 'icalendar'

class Event < ActiveRecord::Base
  belongs_to :event_list

  def to_ical
    e = Icalendar::Event.new
    e.dtstart = DateTime.parse(start)
    e.dtend = DateTime.parse(start) + length.minutes
    e.location = place
    e.summary = name
    e
  end
end