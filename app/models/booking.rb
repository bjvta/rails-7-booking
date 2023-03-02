class Booking < ApplicationRecord
  def time_readable
    time.strftime('%T')
  end

  def as_json(options=nil)
    super(options).merge({
      :name => self.name.titleize,
      :time => self.time_readable
    })
  end
end
