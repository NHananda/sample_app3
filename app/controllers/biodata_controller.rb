class BiodataController < ApplicationController
  before_action :set_biodatum, only: [:show, :edit, :update, :destroy]

  # GET /biodata
  # GET /biodata.json
  def index
    @biodata = Biodatum.all
  end

  # GET /biodata/1
  # GET /biodata/1.json
  def show
  end

  # GET /biodata/new
  def new
    @biodatum = Biodatum.new
  end

  # GET /biodata/1/edit
  def edit
  end

  # POST /biodata
  # POST /biodata.json
  def create
    @biodatum = Biodatum.new(biodatum_params)

    respond_to do |format|
      if @biodatum.save
        format.html { redirect_to @biodatum, notice: 'Biodatum was successfully created.' }
        format.json { render :show, status: :created, location: @biodatum }
      else
        format.html { render :new }
        format.json { render json: @biodatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biodata/1
  # PATCH/PUT /biodata/1.json
  def update
    respond_to do |format|
      if @biodatum.update(biodatum_params)
        format.html { redirect_to @biodatum, notice: 'Biodatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @biodatum }
      else
        format.html { render :edit }
        format.json { render json: @biodatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biodata/1
  # DELETE /biodata/1.json
  def destroy
    @biodatum.destroy
    respond_to do |format|
      format.html { redirect_to biodata_url, notice: 'Biodatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biodatum
      @biodatum = Biodatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biodatum_params
      params.require(:biodatum).permit(:nama, :ttl, :alamat)
    end
end
