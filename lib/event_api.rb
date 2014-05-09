require 'icalendar'

class EventApi

  def parseCalendar(eventList)
    cal = Icalendar::Calendar.new
    eventList.each do |e|
      event = cal.event
      event.dtstart = DateTime.parse(e['start'])
      event.dtend = DateTime.parse(e['start']) + e['length'].minutes
      event.location = e['place']
      event.summary = e['name']
    end
    cal.to_ical
  end

end