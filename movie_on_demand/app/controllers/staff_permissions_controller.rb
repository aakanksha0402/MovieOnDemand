class StaffPermissionsController < ApplicationController
  before_action :set_staff_permission, only: [:show, :edit, :update, :destroy]

  # GET /staff_permissions
  # GET /staff_permissions.json
  def index
    @staff_permissions = StaffPermission.all
  end

  # GET /staff_permissions/1
  # GET /staff_permissions/1.json
  def show
  end

  # GET /staff_permissions/new
  def new
    @staff_permission = StaffPermission.new
  end

  # GET /staff_permissions/1/edit
  def edit
  end

  # POST /staff_permissions
  # POST /staff_permissions.json
  def create
    @staff_permission = StaffPermission.new(staff_permission_params)

    respond_to do |format|
      if @staff_permission.save
        format.html { redirect_to @staff_permission, notice: 'Staff permission was successfully created.' }
        format.json { render :show, status: :created, location: @staff_permission }
      else
        format.html { render :new }
        format.json { render json: @staff_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_permissions/1
  # PATCH/PUT /staff_permissions/1.json
  def update
    respond_to do |format|
      if @staff_permission.update(staff_permission_params)
        format.html { redirect_to @staff_permission, notice: 'Staff permission was successfully updated.' }
        format.json { render :show, status: :ok, location: @staff_permission }
      else
        format.html { render :edit }
        format.json { render json: @staff_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_permissions/1
  # DELETE /staff_permissions/1.json
  def destroy
    @staff_permission.destroy
    respond_to do |format|
      format.html { redirect_to staff_permissions_url, notice: 'Staff permission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_permission
      @staff_permission = StaffPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_permission_params
      params.require(:staff_permission).permit(:manage_seat, :manage_vouchers, :manage_show_time, :manage_tax_info, :manage_price_per_day, :is_deleted)
    end
end
