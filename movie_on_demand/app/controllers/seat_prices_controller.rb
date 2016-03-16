class SeatPricesController < ApplicationController
  before_action :set_seat_price, only: [:show, :edit, :update, :destroy]

  # GET /seat_prices
  # GET /seat_prices.json
  def index
    @seat_prices = SeatPrice.all
  end

  # GET /seat_prices/1
  # GET /seat_prices/1.json
  def show
  end

  # GET /seat_prices/new
  def new
    @seat_price = SeatPrice.new
  end

  # GET /seat_prices/1/edit
  def edit
  end

  # POST /seat_prices
  # POST /seat_prices.json
  def create
    @seat_price = SeatPrice.new(seat_price_params)

    respond_to do |format|
      if @seat_price.save
        format.html { redirect_to @seat_price, notice: 'Seat price was successfully created.' }
        format.json { render :show, status: :created, location: @seat_price }
      else
        format.html { render :new }
        format.json { render json: @seat_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seat_prices/1
  # PATCH/PUT /seat_prices/1.json
  def update
    respond_to do |format|
      if @seat_price.update(seat_price_params)
        format.html { redirect_to @seat_price, notice: 'Seat price was successfully updated.' }
        format.json { render :show, status: :ok, location: @seat_price }
      else
        format.html { render :edit }
        format.json { render json: @seat_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seat_prices/1
  # DELETE /seat_prices/1.json
  def destroy
    @seat_price.destroy
    respond_to do |format|
      format.html { redirect_to seat_prices_url, notice: 'Seat price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seat_price
      @seat_price = SeatPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seat_price_params
      params.require(:seat_price).permit(:theater_id, :weekdays, :weekdays, :weekends, :weekends, :is_deleted)
    end
end
