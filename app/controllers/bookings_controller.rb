class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @number_of_passengers = params[:passengers].to_i
    @number_of_passengers.to_i.times { @booking.passengers.build }
    @flight = Flight.find_by(params[:flight_id])
  end

  def create
    @booking = Booking.new
    @booking.flight_id = params[:booking][:flight_id].to_i
    @booking.save

    params[:booking][:passengers_attributes].each do |key, value|
      @passenger = Passenger.new
      @passenger.email = params[:booking][:email]
      @passenger.booking_id = @booking.id
      @passenger.passenger_name = value[:passenger_name]
      @passenger.save
    end

    @booking.passengers.each do |passenger|
      UserMailer.with(passenger: passenger).thanks_email.deliver_later
    end

    redirect_to booking_path(@booking.id)
  end

end
