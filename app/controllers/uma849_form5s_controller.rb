class Uma849Form5sController < ApplicationController
  before_action :set_uma849_form5, only: [:show, :edit, :update, :destroy]

  # GET /uma849_form5s
  # GET /uma849_form5s.json
  def index
    @uma849_form5s = Uma849Form5.all
  end

  # GET /uma849_form5s/1
  # GET /uma849_form5s/1.json
  def show
  end

  # GET /uma849_form5s/new
  def new
    @uma849_form5 = Uma849Form5.new
  end

  # GET /uma849_form5s/1/edit
  def edit
  end

  # POST /uma849_form5s
  # POST /uma849_form5s.json
  def create
    @uma849_form5 = Uma849Form5.new(uma849_form5_params)

    respond_to do |format|
      if @uma849_form5.save
        format.html { redirect_to @uma849_form5, notice: 'Uma849 form5 was successfully created.' }
        format.json { render :show, status: :created, location: @uma849_form5 }
      else
        format.html { render :new }
        format.json { render json: @uma849_form5.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uma849_form5s/1
  # PATCH/PUT /uma849_form5s/1.json
  def update
    respond_to do |format|
      if @uma849_form5.update(uma849_form5_params)
        format.html { redirect_to @uma849_form5, notice: 'Uma849 form5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @uma849_form5 }
      else
        format.html { render :edit }
        format.json { render json: @uma849_form5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uma849_form5s/1
  # DELETE /uma849_form5s/1.json
  def destroy
    @uma849_form5.destroy
    respond_to do |format|
      format.html { redirect_to uma849_form5s_url, notice: 'Uma849 form5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uma849_form5
      @uma849_form5 = Uma849Form5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def uma849_form5_params
      params.require(:uma849_form5).permit(:name, :age, :sex)
    end
end
