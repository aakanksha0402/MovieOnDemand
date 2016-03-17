class BookedSeatsController < ApplicationController
  before_action :set_booked_seat, only: [:show, :edit, :update, :destroy]

  # GET /booked_seats
  # GET /booked_seats.json
  def index
    @booked_seats = BookedSeat.all
  end

  # GET /booked_seats/1
  # GET /booked_seats/1.json
  def show
  end

  # GET /booked_seats/new
  def new
    @booked_seat = BookedSeat.new
  end

  # GET /booked_seats/1/edit
  def edit
  end

  # POST /booked_seats
  # POST /booked_seats.json
  def create
    @booked_seat = BookedSeat.new(booked_seat_params)

    respond_to do |format|
      if @booked_seat.save
        format.html { redirect_to @booked_seat, notice: 'Booked seat was successfully created.' }
        format.json { render :show, status: :created, location: @booked_seat }
      else
        format.html { render :new }
        format.json { render json: @booked_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booked_seats/1
  # PATCH/PUT /booked_seats/1.json
  def update
    respond_to do |format|
      if @booked_seat.update(booked_seat_params)
        format.html { redirect_to @booked_seat, notice: 'Booked seat was successfully updated.' }
        format.json { render :show, status: :ok, location: @booked_seat }
      else
        format.html { render :edit }
        format.json { render json: @booked_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booked_seats/1
  # DELETE /booked_seats/1.json
  def destroy
    @booked_seat.destroy
    respond_to do |format|
      format.html { redirect_to booked_seats_url, notice: 'Booked seat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booked_seat
      @booked_seat = BookedSeat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booked_seat_params
      params.require(:booked_seat).permit(:theatre_seat, :booking_id, :status_of_booked_seat, :is_deleted)
    end
end
