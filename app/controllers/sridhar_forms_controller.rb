class SridharFormsController < ApplicationController
  before_action :set_sridhar_form, only: [:show, :edit, :update, :destroy]

  # GET /sridhar_forms
  # GET /sridhar_forms.json
  def index
    @sridhar_forms = SridharForm.all
  end

  # GET /sridhar_forms/1
  # GET /sridhar_forms/1.json
  def show
  end

  # GET /sridhar_forms/new
  def new
    @sridhar_form = SridharForm.new
  end

  # GET /sridhar_forms/1/edit
  def edit
  end

  # POST /sridhar_forms
  # POST /sridhar_forms.json
  def create
    @sridhar_form = SridharForm.new(sridhar_form_params)

    respond_to do |format|
      if @sridhar_form.save
        format.html { redirect_to @sridhar_form, notice: 'Sridhar form was successfully created.' }
        format.json { render :show, status: :created, location: @sridhar_form }
      else
        format.html { render :new }
        format.json { render json: @sridhar_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sridhar_forms/1
  # PATCH/PUT /sridhar_forms/1.json
  def update
    respond_to do |format|
      if @sridhar_form.update(sridhar_form_params)
        format.html { redirect_to @sridhar_form, notice: 'Sridhar form was successfully updated.' }
        format.json { render :show, status: :ok, location: @sridhar_form }
      else
        format.html { render :edit }
        format.json { render json: @sridhar_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sridhar_forms/1
  # DELETE /sridhar_forms/1.json
  def destroy
    @sridhar_form.destroy
    respond_to do |format|
      format.html { redirect_to sridhar_forms_url, notice: 'Sridhar form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sridhar_form
      @sridhar_form = SridharForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sridhar_form_params
      params.require(:sridhar_form).permit(:name, :age, :sex, :dob, :doj, :designation, :employer)
    end
end
