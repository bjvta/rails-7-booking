
json.array! @bookings do |booking|
  json.id booking.id
  json.title "#{booking.name} - #{booking.address}"
  json.startDate booking.start_date
  json.endDate booking.end_date
end
