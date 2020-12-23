class FlightsController < ApplicationController

  def index
    @flights = []
    if params[:start_id].present?
      @all_flights = Flight.all
      @all_flights.each do |flight|
        if meets_requirements?(flight)
          @flights << flight
        end
      end
      @flights << "none" if @flights.empty?
    end
  end

  private

  def flight_params
    params.permit(:start_id, :end_id, :passengers, :date)
  end

  def meets_requirements?(flight)
    if flight.start_airport.name == flight_params[:start_id] && flight.end_airport.name == flight_params[:end_id] && flight.departure_time.to_date.to_s == flight_params[:date].to_s
      return true
    else
      return false
    end
  end

end
