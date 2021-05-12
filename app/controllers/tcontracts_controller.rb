class TcontractsController < ApplicationController
  before_action :set_tcontract, only: [:show, :edit, :update, :destroy]

  # GET /tcontracts
  # GET /tcontracts.json
  def index
    @tcontracts = Tcontract.all
  end

  # GET /tcontracts/1
  # GET /tcontracts/1.json
  def show
  end

  # GET /tcontracts/new
  def new
    @tcontract = Tcontract.new
  end

  # GET /tcontracts/1/edit
  def edit
  end

  # POST /tcontracts
  # POST /tcontracts.json
  def create
    @tcontract = Tcontract.new(tcontract_params)

    respond_to do |format|
      if @tcontract.save
        format.html { redirect_to @tcontract, notice: 'Tcontract was successfully created.' }
        format.json { render :show, status: :created, location: @tcontract }
      else
        format.html { render :new }
        format.json { render json: @tcontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tcontracts/1
  # PATCH/PUT /tcontracts/1.json
  def update
    respond_to do |format|
      if @tcontract.update(tcontract_params)
        format.html { redirect_to @tcontract, notice: 'Tcontract was successfully updated.' }
        format.json { render :show, status: :ok, location: @tcontract }
      else
        format.html { render :edit }
        format.json { render json: @tcontract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tcontracts/1
  # DELETE /tcontracts/1.json
  def destroy
    @tcontract.destroy
    respond_to do |format|
      format.html { redirect_to tcontracts_url, notice: 'Tcontract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tcontract
      @tcontract = Tcontract.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tcontract_params
      params.require(:tcontract).permit(:subject_id, :teacher_id)
    end
end
