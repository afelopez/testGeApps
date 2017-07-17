class Api::VehiclesController < Api::ApiController

  def index
    @vehicles = Vehicle.all
  end

  def create
    vehicle = Vehicle.new(vehicle_params)
    vehicle.save!
    vehicle.plate[0..2].include?('ABC') ? vehicle.update!(categorie: 'categoria1') : vehicle.update!(categorie: 'categoria2')
    render json: { message: 'Vehículo creado en ' + vehicle.categorie}, status: 200
    rescue Exception => e
    render json: { message: e.message , status: false }, status: 400
  end

private

  def vehicle_params
    params.require(:vehicle).permit(:plate, :color, :year)
  end
end
