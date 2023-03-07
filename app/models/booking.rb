class Booking < ApplicationRecord
  def time_readable
    time.strftime('%T')
  end

  def start_date
    "#{date.strftime('%F')}T#{time_readable}"
  end

  def end_date
    "#{date.strftime('%F')}T#{(time + hours.hours).strftime('%T')}"
  end

  def as_json(options=nil)
    super(options).merge({
      :name => self.name.titleize,
      :time => self.time_readable
    })
  end
end
