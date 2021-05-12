class GokulDemosController < ApplicationController
  before_action :set_gokul_demo, only: [:show, :edit, :update, :destroy]

  # GET /gokul_demos
  # GET /gokul_demos.json
  def index
    @gokul_demos = GokulDemo.all
  end

  # GET /gokul_demos/1
  # GET /gokul_demos/1.json
  def show
  end

  # GET /gokul_demos/new
  def new
    @gokul_demo = GokulDemo.new
  end

  # GET /gokul_demos/1/edit
  def edit
  end

  # POST /gokul_demos
  # POST /gokul_demos.json
  def create
    @gokul_demo = GokulDemo.new(gokul_demo_params)

    respond_to do |format|
      if @gokul_demo.save
        format.html { redirect_to @gokul_demo, notice: 'Gokul demo was successfully created.' }
        format.json { render :show, status: :created, location: @gokul_demo }
      else
        format.html { render :new }
        format.json { render json: @gokul_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gokul_demos/1
  # PATCH/PUT /gokul_demos/1.json
  def update
    respond_to do |format|
      if @gokul_demo.update(gokul_demo_params)
        format.html { redirect_to @gokul_demo, notice: 'Gokul demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @gokul_demo }
      else
        format.html { render :edit }
        format.json { render json: @gokul_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gokul_demos/1
  # DELETE /gokul_demos/1.json
  def destroy
    @gokul_demo.destroy
    respond_to do |format|
      format.html { redirect_to gokul_demos_url, notice: 'Gokul demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gokul_demo
      @gokul_demo = GokulDemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gokul_demo_params
      params.require(:gokul_demo).permit(:employee_no, :name, :designation)
    end
end
