class Api::VehiclesController < Api::ApiController

  def index
    @vehicles = Vehicle.all
  end

  def create
    vehicle = Vehicle.new(vehicle_params)
    vehicle.save!
    render json: { message: 'Vehículo creado en ' + vehicle.categorie}, status: 200
    rescue Exception => e
    render json: { message: e.message , status: false }, status: 400
  end

private

  def vehicle_params
    params.require(:vehicle).permit(:plate, :color, :year)
  end
end
