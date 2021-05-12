class SundarFormsController < ApplicationController
  before_action :set_sundar_form, only: [:show, :edit, :update, :destroy]

  # GET /sundar_forms
  # GET /sundar_forms.json
  def index
    @sundar_forms = SundarForm.all
  end

  # GET /sundar_forms/1
  # GET /sundar_forms/1.json
  def show
  end

  # GET /sundar_forms/new
  def new
    @sundar_form = SundarForm.new
  end

  # GET /sundar_forms/1/edit
  def edit
  end

  # POST /sundar_forms
  # POST /sundar_forms.json
  def create
    @sundar_form = SundarForm.new(sundar_form_params)

    respond_to do |format|
      if @sundar_form.save
        format.html { redirect_to @sundar_form, notice: 'Sundar form was successfully created.' }
        format.json { render :show, status: :created, location: @sundar_form }
      else
        format.html { render :new }
        format.json { render json: @sundar_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sundar_forms/1
  # PATCH/PUT /sundar_forms/1.json
  def update
    respond_to do |format|
      if @sundar_form.update(sundar_form_params)
        format.html { redirect_to @sundar_form, notice: 'Sundar form was successfully updated.' }
        format.json { render :show, status: :ok, location: @sundar_form }
      else
        format.html { render :edit }
        format.json { render json: @sundar_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sundar_forms/1
  # DELETE /sundar_forms/1.json
  def destroy
    @sundar_form.destroy
    respond_to do |format|
      format.html { redirect_to sundar_forms_url, notice: 'Sundar form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sundar_form
      @sundar_form = SundarForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sundar_form_params
      params.require(:sundar_form).permit(:name, :age, :address, :profile)
    end
end
