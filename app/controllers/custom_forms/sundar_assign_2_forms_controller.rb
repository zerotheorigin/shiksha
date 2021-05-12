class CustomForms::SundarAssign2FormsController < ApplicationController
  before_action :set_custom_forms_sundar_assign_2_form, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms/sundar_assign_2_forms
  # GET /custom_forms/sundar_assign_2_forms.json
  def index
    @custom_forms_sundar_assign_2_forms = CustomForms::SundarAssign2Form.all
  end

  # GET /custom_forms/sundar_assign_2_forms/1
  # GET /custom_forms/sundar_assign_2_forms/1.json
  def show
  end

  # GET /custom_forms/sundar_assign_2_forms/new
  def new
    @custom_forms_sundar_assign_2_form = CustomForms::SundarAssign2Form.new
  end

  # GET /custom_forms/sundar_assign_2_forms/1/edit
  def edit
  end

  # POST /custom_forms/sundar_assign_2_forms
  # POST /custom_forms/sundar_assign_2_forms.json
  def create
    @custom_forms_sundar_assign_2_form = CustomForms::SundarAssign2Form.new(custom_forms_sundar_assign_2_form_params)

    respond_to do |format|
      if @custom_forms_sundar_assign_2_form.save
        format.html { redirect_to @custom_forms_sundar_assign_2_form, notice: 'Sundar assign 2 form was successfully created.' }
        format.json { render :show, status: :created, location: @custom_forms_sundar_assign_2_form }
      else
        format.html { render :new }
        format.json { render json: @custom_forms_sundar_assign_2_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/sundar_assign_2_forms/1
  # PATCH/PUT /custom_forms/sundar_assign_2_forms/1.json
  def update
    respond_to do |format|
      if @custom_forms_sundar_assign_2_form.update(custom_forms_sundar_assign_2_form_params)
        format.html { redirect_to @custom_forms_sundar_assign_2_form, notice: 'Sundar assign 2 form was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_forms_sundar_assign_2_form }
      else
        format.html { render :edit }
        format.json { render json: @custom_forms_sundar_assign_2_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/sundar_assign_2_forms/1
  # DELETE /custom_forms/sundar_assign_2_forms/1.json
  def destroy
    @custom_forms_sundar_assign_2_form.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_sundar_assign_2_forms_url, notice: 'Sundar assign 2 form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_forms_sundar_assign_2_form
      @custom_forms_sundar_assign_2_form = CustomForms::SundarAssign2Form.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_forms_sundar_assign_2_form_params
      params.require(:custom_forms_sundar_assign_2_form).permit(:Q1, :Q2, :Q3, :Q4)
    end
end
