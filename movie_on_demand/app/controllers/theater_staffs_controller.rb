class TheaterStaffsController < ApplicationController
  before_action :set_theater_staff, only: [:show, :edit, :update, :destroy]

  # GET /theater_staffs
  # GET /theater_staffs.json
  def index
    @theater_staffs = TheaterStaff.all
  end

  # GET /theater_staffs/1
  # GET /theater_staffs/1.json
  def show
  end

  # GET /theater_staffs/new
  def new
    @theater_staff = TheaterStaff.new
  end

  # GET /theater_staffs/1/edit
  def edit
  end

  # POST /theater_staffs
  # POST /theater_staffs.json
  def create
    @theater_staff = TheaterStaff.new(theater_staff_params)

    respond_to do |format|
      if @theater_staff.save
        format.html { redirect_to @theater_staff, notice: 'Theater staff was successfully created.' }
        format.json { render :show, status: :created, location: @theater_staff }
      else
        format.html { render :new }
        format.json { render json: @theater_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theater_staffs/1
  # PATCH/PUT /theater_staffs/1.json
  def update
    respond_to do |format|
      if @theater_staff.update(theater_staff_params)
        format.html { redirect_to @theater_staff, notice: 'Theater staff was successfully updated.' }
        format.json { render :show, status: :ok, location: @theater_staff }
      else
        format.html { render :edit }
        format.json { render json: @theater_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theater_staffs/1
  # DELETE /theater_staffs/1.json
  def destroy
    @theater_staff.destroy
    respond_to do |format|
      format.html { redirect_to theater_staffs_url, notice: 'Theater staff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theater_staff
      @theater_staff = TheaterStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theater_staff_params
      params.require(:theater_staff).permit(:user_id, :theater_id, :staff_permission_id, :is_deleted)
    end
end
