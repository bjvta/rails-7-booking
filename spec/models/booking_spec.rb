require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe '#time_readable' do
    it 'should return 15:30 given a datetime' do
      booking = create(:booking)
      expect(booking.time_readable).to eq("15:00:00")
    end
  end
end
