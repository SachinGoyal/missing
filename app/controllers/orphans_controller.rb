class OrphansController < ApplicationController
  layout "user"
  before_action :set_orphan, only: [:show, :edit, :update, :destroy]
  
  # GET /orphans
  # GET /orphans.json
  def index
    @orphans = Orphan.all
  end

  # GET /orphans/1
  # GET /orphans/1.json
  def show
  end

  # GET /orphans/new
  def new
    @orphan = Orphan.new
  end

  # GET /orphans/1/edit
  def edit
  end

  # POST /orphans
  # POST /orphans.json
  def create
    @orphan = Orphan.new(orphan_params)

    respond_to do |format|
      if @orphan.save
        format.html { redirect_to @orphan, notice: 'orphan was successfully created.' }
        format.json { render :show, status: :created, location: @orphan }
      else
        format.html { render :new }
        format.json { render json: @orphan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orphans/1
  # PATCH/PUT /orphans/1.json
  def update
    respond_to do |format|
      if @orphan.update(orphan_params)
        format.html { redirect_to @orphan, notice: 'orphan was successfully updated.' }
        format.json { render :show, status: :ok, location: @orphan }
      else
        format.html { render :edit }
        format.json { render json: @orphan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orphans/1
  # DELETE /orphans/1.json
  def destroy
    @orphan.destroy
    respond_to do |format|
      format.html { redirect_to orphans_url, notice: 'orphan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orphan
      @orphan = Orphan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orphan_params
      params.require(:orphan).permit(:profile_id, :description, :latitude, :longitude, :address, :pincode )
    end
end