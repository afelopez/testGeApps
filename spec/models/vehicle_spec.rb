require 'rails_helper'

describe Vehicle do
  it "valid plate ABC" do
    vehicle = Vehicle.create!(plate: 'ABC98273', color: 'Red', year: 2015)
    expect(vehicle).to be_valid
  end
  it "valid plate DFG" do
    vehicle = Vehicle.create!(plate: 'DFG2op', color: 'Red', year: 2015)
    expect(vehicle).to be_valid
  end
  it "invalid plate" do
    vehicle = Vehicle.create!(plate: 'AWD32', color: 'Red', year: 2015)
    expect(vehicle.errors[:plate]).to be_valid
  end
  it "valid categoria1" do
    vehicle = Vehicle.create!(plate: 'ABC1ywyatd', color: 'Red', year: 2015)
    expect(vehicle.categorie).to eq('categoria1')
  end
  it "valid categoria2" do
    vehicle = Vehicle.create!(plate: 'DFG', color: 'Red', year: 2015)
    expect(vehicle.categorie).to eq('categoria2')
  end
end
