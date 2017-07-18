Vehicle.delete_all
Passenger.delete_all

100.times do |n|
  Vehicle.create!(plate: 'ABC'+ n.to_s, color: "Red", year: "2014")
  Vehicle.create!(plate: 'DFG'+ n.to_s, color: "Red", year: "2014")
  Passenger.create!(name: 'Pasajero'+n.to_s)
  n += 1
end

1000.times {
  vehicle = Vehicle.find(Random.rand(1..Vehicle.all.length))
  passenger = Passenger.find(Random.rand(1..Passenger.all.length))
  Path.create!(vehicle: vehicle, passenger: passenger)
}
