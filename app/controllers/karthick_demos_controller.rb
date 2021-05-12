class KarthickDemosController < ApplicationController
  before_action :set_karthick_demo, only: [:show, :edit, :update, :destroy]

  # GET /karthick_demos
  # GET /karthick_demos.json
  def index
    @karthick_demos = KarthickDemo.all
  end

  # GET /karthick_demos/1
  # GET /karthick_demos/1.json
  def show
  end

  # GET /karthick_demos/new
  def new
    @karthick_demo = KarthickDemo.new
  end

  # GET /karthick_demos/1/edit
  def edit
  end

  # POST /karthick_demos
  # POST /karthick_demos.json
  def create
    @karthick_demo = KarthickDemo.new(karthick_demo_params)

    respond_to do |format|
      if @karthick_demo.save
        format.html { redirect_to @karthick_demo, notice: 'Karthick demo was successfully created.' }
        format.json { render :show, status: :created, location: @karthick_demo }
      else
        format.html { render :new }
        format.json { render json: @karthick_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karthick_demos/1
  # PATCH/PUT /karthick_demos/1.json
  def update
    respond_to do |format|
      if @karthick_demo.update(karthick_demo_params)
        format.html { redirect_to @karthick_demo, notice: 'Karthick demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @karthick_demo }
      else
        format.html { render :edit }
        format.json { render json: @karthick_demo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karthick_demos/1
  # DELETE /karthick_demos/1.json
  def destroy
    @karthick_demo.destroy
    respond_to do |format|
      format.html { redirect_to karthick_demos_url, notice: 'Karthick demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_karthick_demo
      @karthick_demo = KarthickDemo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def karthick_demo_params
      params.require(:karthick_demo).permit(:name, :age, :gender, :skills, :interests, :hobbies)
    end
end
