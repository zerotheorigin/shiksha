class CustomForms::SundarForm2sController < ApplicationController
  before_action :set_custom_forms_sundar_form2, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms/sundar_form2s
  # GET /custom_forms/sundar_form2s.json
  def index
    @custom_forms_sundar_form2s = CustomForms::SundarForm2.all
  end

  # GET /custom_forms/sundar_form2s/1
  # GET /custom_forms/sundar_form2s/1.json
  def show
  end

  # GET /custom_forms/sundar_form2s/new
  def new
    @custom_forms_sundar_form2 = CustomForms::SundarForm2.new
  end

  # GET /custom_forms/sundar_form2s/1/edit
  def edit
  end

  # POST /custom_forms/sundar_form2s
  # POST /custom_forms/sundar_form2s.json
  def create
    @custom_forms_sundar_form2 = CustomForms::SundarForm2.new(custom_forms_sundar_form2_params)

    respond_to do |format|
      if @custom_forms_sundar_form2.save
        format.html { redirect_to @custom_forms_sundar_form2, notice: 'Sundar form2 was successfully created.' }
        format.json { render :show, status: :created, location: @custom_forms_sundar_form2 }
      else
        format.html { render :new }
        format.json { render json: @custom_forms_sundar_form2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/sundar_form2s/1
  # PATCH/PUT /custom_forms/sundar_form2s/1.json
  def update
    respond_to do |format|
      if @custom_forms_sundar_form2.update(custom_forms_sundar_form2_params)
        format.html { redirect_to @custom_forms_sundar_form2, notice: 'Sundar form2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_forms_sundar_form2 }
      else
        format.html { render :edit }
        format.json { render json: @custom_forms_sundar_form2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/sundar_form2s/1
  # DELETE /custom_forms/sundar_form2s/1.json
  def destroy
    @custom_forms_sundar_form2.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_sundar_form2s_url, notice: 'Sundar form2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_forms_sundar_form2
      @custom_forms_sundar_form2 = CustomForms::SundarForm2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_forms_sundar_form2_params
      params.require(:custom_forms_sundar_form2).permit(:name, :age, :email)
    end
end
