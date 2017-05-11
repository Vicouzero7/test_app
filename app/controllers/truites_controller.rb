class TruitesController < ApplicationController
  before_action :set_truite, only: [:show, :edit, :update, :destroy]

  # GET /truites
  # GET /truites.json
  def index
    @truites = Truite.all
  end

  # GET /truites/1
  # GET /truites/1.json
  def show
    @truites = Truite.find(params[:id])
  end

  # GET /truites/new
  def new
    @truite = Truite.new
  end

  # GET /truites/1/edit
  def edit
  end

  # POST /truites
  # POST /truites.json
  def create
    @truite = Truite.new(truite_params)

    respond_to do |format|
      if @truite.save
        format.html { redirect_to @truite, notice: 'Truite was successfully created.' }
        format.json { render :show, status: :created, location: @truite }
      else
        format.html { render :new }
        format.json { render json: @truite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truites/1
  # PATCH/PUT /truites/1.json
  def update
    respond_to do |format|
      if @truite.update(truite_params)
        format.html { redirect_to @truite, notice: 'Truite was successfully updated.' }
        format.json { render :show, status: :ok, location: @truite }
      else
        format.html { render :edit }
        format.json { render json: @truite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truites/1
  # DELETE /truites/1.json
  def destroy
    @truite.destroy
    respond_to do |format|
      format.html { redirect_to truites_url, notice: 'Truite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truite
      @truite = Truite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truite_params
      params.require(:truite).permit(:content)
    end
end
