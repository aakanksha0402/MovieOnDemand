class TheaterSeatsController < ApplicationController
  before_action :set_theater_seat, only: [:show, :edit, :update, :destroy]

  # GET /theater_seats
  # GET /theater_seats.json
  def index
    @theater_seats = TheaterSeat.all
  end

  # GET /theater_seats/1
  # GET /theater_seats/1.json
  def show
  end

  # GET /theater_seats/new
  def new
    @theater_seat = TheaterSeat.new
  end

  # GET /theater_seats/1/edit
  def edit
  end

  # POST /theater_seats
  # POST /theater_seats.json
  def create
    @theater_seat = TheaterSeat.new(theater_seat_params)

    respond_to do |format|
      if @theater_seat.save
        format.html { redirect_to @theater_seat, notice: 'Theater seat was successfully created.' }
        format.json { render :show, status: :created, location: @theater_seat }
      else
        format.html { render :new }
        format.json { render json: @theater_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theater_seats/1
  # PATCH/PUT /theater_seats/1.json
  def update
    respond_to do |format|
      if @theater_seat.update(theater_seat_params)
        format.html { redirect_to @theater_seat, notice: 'Theater seat was successfully updated.' }
        format.json { render :show, status: :ok, location: @theater_seat }
      else
        format.html { render :edit }
        format.json { render json: @theater_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theater_seats/1
  # DELETE /theater_seats/1.json
  def destroy
    @theater_seat.destroy
    respond_to do |format|
      format.html { redirect_to theater_seats_url, notice: 'Theater seat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theater_seat
      @theater_seat = TheaterSeat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theater_seat_params
      params.require(:theater_seat).permit(:theater_screen_id, :seat_type, :row_count, :column_count, :price_multiple_factor, :price_multiple_factor, :tax_payable, :tax_payable)
    end
end
