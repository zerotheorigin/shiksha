class CustomForms::AnandYogoListsController < ApplicationController
  before_action :set_custom_forms_anand_yogo_list, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms/anand_yogo_lists
  # GET /custom_forms/anand_yogo_lists.json
  def index
    @custom_forms_anand_yogo_lists = CustomForms::AnandYogoList.all
  end

  # GET /custom_forms/anand_yogo_lists/1
  # GET /custom_forms/anand_yogo_lists/1.json
  def show
  end

  # GET /custom_forms/anand_yogo_lists/new
  def new
    @custom_forms_anand_yogo_list = CustomForms::AnandYogoList.new
  end

  # GET /custom_forms/anand_yogo_lists/1/edit
  def edit
  end

  # POST /custom_forms/anand_yogo_lists
  # POST /custom_forms/anand_yogo_lists.json
  def create
    @custom_forms_anand_yogo_list = CustomForms::AnandYogoList.new(custom_forms_anand_yogo_list_params)

    respond_to do |format|
      if @custom_forms_anand_yogo_list.save
        format.html { redirect_to @custom_forms_anand_yogo_list, notice: 'Anand yogo list was successfully created.' }
        format.json { render :show, status: :created, location: @custom_forms_anand_yogo_list }
      else
        format.html { render :new }
        format.json { render json: @custom_forms_anand_yogo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/anand_yogo_lists/1
  # PATCH/PUT /custom_forms/anand_yogo_lists/1.json
  def update
    respond_to do |format|
      if @custom_forms_anand_yogo_list.update(custom_forms_anand_yogo_list_params)
        format.html { redirect_to @custom_forms_anand_yogo_list, notice: 'Anand yogo list was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_forms_anand_yogo_list }
      else
        format.html { render :edit }
        format.json { render json: @custom_forms_anand_yogo_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/anand_yogo_lists/1
  # DELETE /custom_forms/anand_yogo_lists/1.json
  def destroy
    @custom_forms_anand_yogo_list.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_anand_yogo_lists_url, notice: 'Anand yogo list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_forms_anand_yogo_list
      @custom_forms_anand_yogo_list = CustomForms::AnandYogoList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_forms_anand_yogo_list_params
      params.require(:custom_forms_anand_yogo_list).permit(:name, :age, :email, :gender, :employer, :dob)
    end
end
