require 'rails_helper'

describe Path do
  it "Without vehicle and passenger" do
    path = Path.new( vehicle: nil, passenger: nil)
    expect(path).to be_invalid
  end
  it "Without passenger" do
    vehicle = Vehicle.create!(plate: 'ABC298', color: "Red", year: "2014")
    path = Path.new( vehicle: vehicle, passenger: nil)
    expect(path).to be_invalid
  end
  it "Without vehicle" do
    passenger = Passenger.create!(name: 'Pasajero')
    path = Path.new( vehicle: nil, passenger: passenger)
    expect(path).to be_invalid
  end

end
