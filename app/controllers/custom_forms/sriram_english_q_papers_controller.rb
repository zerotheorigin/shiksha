class CustomForms::SriramEnglishQPapersController < ApplicationController
  before_action :set_custom_forms_sriram_english_q_paper, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms/sriram_english_q_papers
  # GET /custom_forms/sriram_english_q_papers.json
  def index
    @custom_forms_sriram_english_q_papers = CustomForms::SriramEnglishQPaper.all
  end

  # GET /custom_forms/sriram_english_q_papers/1
  # GET /custom_forms/sriram_english_q_papers/1.json
  def show
  end

  # GET /custom_forms/sriram_english_q_papers/new
  def new
    @custom_forms_sriram_english_q_paper = CustomForms::SriramEnglishQPaper.new
  end

  # GET /custom_forms/sriram_english_q_papers/1/edit
  def edit
  end

  # POST /custom_forms/sriram_english_q_papers
  # POST /custom_forms/sriram_english_q_papers.json
  def create
    @custom_forms_sriram_english_q_paper = CustomForms::SriramEnglishQPaper.new(custom_forms_sriram_english_q_paper_params)

    respond_to do |format|
      if @custom_forms_sriram_english_q_paper.save
        format.html { redirect_to @custom_forms_sriram_english_q_paper, notice: 'Sriram english q paper was successfully created.' }
        format.json { render :show, status: :created, location: @custom_forms_sriram_english_q_paper }
      else
        format.html { render :new }
        format.json { render json: @custom_forms_sriram_english_q_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/sriram_english_q_papers/1
  # PATCH/PUT /custom_forms/sriram_english_q_papers/1.json
  def update
    respond_to do |format|
      if @custom_forms_sriram_english_q_paper.update(custom_forms_sriram_english_q_paper_params)
        format.html { redirect_to @custom_forms_sriram_english_q_paper, notice: 'Sriram english q paper was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_forms_sriram_english_q_paper }
      else
        format.html { render :edit }
        format.json { render json: @custom_forms_sriram_english_q_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/sriram_english_q_papers/1
  # DELETE /custom_forms/sriram_english_q_papers/1.json
  def destroy
    @custom_forms_sriram_english_q_paper.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_sriram_english_q_papers_url, notice: 'Sriram english q paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_forms_sriram_english_q_paper
      @custom_forms_sriram_english_q_paper = CustomForms::SriramEnglishQPaper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_forms_sriram_english_q_paper_params
      params.require(:custom_forms_sriram_english_q_paper).permit(:Q1, :Q2, :Q3)
    end
end
