class CustomForms::TestFormsController < ApplicationController
  before_action :set_custom_forms_test_form, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms/test_forms
  # GET /custom_forms/test_forms.json
  def index
    @custom_forms_test_forms = CustomForms::TestForm.all
  end

  # GET /custom_forms/test_forms/1
  # GET /custom_forms/test_forms/1.json
  def show
  end

  # GET /custom_forms/test_forms/new
  def new
    @custom_forms_test_form = CustomForms::TestForm.new
  end

  # GET /custom_forms/test_forms/1/edit
  def edit
  end

  # POST /custom_forms/test_forms
  # POST /custom_forms/test_forms.json
  def create
    @custom_forms_test_form = CustomForms::TestForm.new(custom_forms_test_form_params)

    respond_to do |format|
      if @custom_forms_test_form.save
        format.html { redirect_to @custom_forms_test_form, notice: 'Test form was successfully created.' }
        format.json { render :show, status: :created, location: @custom_forms_test_form }
      else
        format.html { render :new }
        format.json { render json: @custom_forms_test_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/test_forms/1
  # PATCH/PUT /custom_forms/test_forms/1.json
  def update
    respond_to do |format|
      if @custom_forms_test_form.update(custom_forms_test_form_params)
        format.html { redirect_to @custom_forms_test_form, notice: 'Test form was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_forms_test_form }
      else
        format.html { render :edit }
        format.json { render json: @custom_forms_test_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/test_forms/1
  # DELETE /custom_forms/test_forms/1.json
  def destroy
    @custom_forms_test_form.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_test_forms_url, notice: 'Test form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_forms_test_form
      @custom_forms_test_form = CustomForms::TestForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_forms_test_form_params
      params.require(:custom_forms_test_form).permit(:Q1, :Q2, :Q3, :Q4)
    end
end
