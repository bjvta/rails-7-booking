require 'rails_helper'

RSpec.describe Booking, type: :model do
  describe '#time_readable' do
    it 'should return 15:30 given a datetime' do
      booking = create(:booking)
      expect(booking.time_readable).to eq("15:00:00")
    end
  end

  describe '#start_date' do
    it 'should return the given data' do
      booking = create(:booking)
      expect(booking.start_date).to eq("2022-01-01T15:00:00")
    end
  end

  describe '#end_date' do
    it 'should return the given data' do
      booking = create(:booking)
      expect(booking.end_date).to eq("2022-01-01T17:00:00")
    end
  end
end
