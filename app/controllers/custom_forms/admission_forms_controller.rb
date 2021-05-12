class CustomForms::AdmissionFormsController < ApplicationController
  before_action :set_custom_forms_admission_form, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms/admission_forms
  # GET /custom_forms/admission_forms.json
  def index
    @custom_forms_admission_forms = CustomForms::AdmissionForm.all
  end

  # GET /custom_forms/admission_forms/1
  # GET /custom_forms/admission_forms/1.json
  def show
  end

  # GET /custom_forms/admission_forms/new
  def new
    @custom_forms_admission_form = CustomForms::AdmissionForm.new
  end

  # GET /custom_forms/admission_forms/1/edit
  def edit
  end

  # POST /custom_forms/admission_forms
  # POST /custom_forms/admission_forms.json
  def create
    @custom_forms_admission_form = CustomForms::AdmissionForm.new(custom_forms_admission_form_params)

    respond_to do |format|
      if @custom_forms_admission_form.save
        format.html { redirect_to @custom_forms_admission_form, notice: 'Admission form was successfully created.' }
        format.json { render :show, status: :created, location: @custom_forms_admission_form }
      else
        format.html { render :new }
        format.json { render json: @custom_forms_admission_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/admission_forms/1
  # PATCH/PUT /custom_forms/admission_forms/1.json
  def update
    respond_to do |format|
      if @custom_forms_admission_form.update(custom_forms_admission_form_params)
        format.html { redirect_to @custom_forms_admission_form, notice: 'Admission form was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_forms_admission_form }
      else
        format.html { render :edit }
        format.json { render json: @custom_forms_admission_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/admission_forms/1
  # DELETE /custom_forms/admission_forms/1.json
  def destroy
    @custom_forms_admission_form.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_admission_forms_url, notice: 'Admission form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_forms_admission_form
      @custom_forms_admission_form = CustomForms::AdmissionForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_forms_admission_form_params
      params.require(:custom_forms_admission_form).permit(:name, :fathers_name, :age, :gender, :dob, :address, :phone_no)
    end
end
