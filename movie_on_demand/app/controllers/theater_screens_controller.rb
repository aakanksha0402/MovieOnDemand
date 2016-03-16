class TheaterScreensController < ApplicationController
  before_action :set_theater_screen, only: [:show, :edit, :update, :destroy]

  # GET /theater_screens
  # GET /theater_screens.json
  def index
    @theater_screens = TheaterScreen.all
  end

  # GET /theater_screens/1
  # GET /theater_screens/1.json
  def show
  end

  # GET /theater_screens/new
  def new
    @theater_screen = TheaterScreen.new
  end

  # GET /theater_screens/1/edit
  def edit
  end

  # POST /theater_screens
  # POST /theater_screens.json
  def create
    @theater_screen = TheaterScreen.new(theater_screen_params)

    respond_to do |format|
      if @theater_screen.save
        format.html { redirect_to @theater_screen, notice: 'Theater screen was successfully created.' }
        format.json { render :show, status: :created, location: @theater_screen }
      else
        format.html { render :new }
        format.json { render json: @theater_screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theater_screens/1
  # PATCH/PUT /theater_screens/1.json
  def update
    respond_to do |format|
      if @theater_screen.update(theater_screen_params)
        format.html { redirect_to @theater_screen, notice: 'Theater screen was successfully updated.' }
        format.json { render :show, status: :ok, location: @theater_screen }
      else
        format.html { render :edit }
        format.json { render json: @theater_screen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theater_screens/1
  # DELETE /theater_screens/1.json
  def destroy
    @theater_screen.destroy
    respond_to do |format|
      format.html { redirect_to theater_screens_url, notice: 'Theater screen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theater_screen
      @theater_screen = TheaterScreen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theater_screen_params
      params.require(:theater_screen).permit(:theater_id, :screen_no, :is_deleted)
    end
end
