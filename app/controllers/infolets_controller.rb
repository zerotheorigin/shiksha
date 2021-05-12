class InfoletsController < ApplicationController
  before_action :set_infolet, only: [:show, :edit, :update, :destroy]

  # GET /infolets
  # GET /infolets.json
  def index
    @infolets = Infolet.all
  end

  # GET /infolets/1
  # GET /infolets/1.json
  def show
  end

  # GET /infolets/new
  def new
    @infolet = Infolet.new
  end

  # GET /infolets/1/edit
  def edit
  end

  # POST /infolets
  # POST /infolets.json
  def create
    @infolet = Infolet.new(infolet_params)
	
    @infolet.tag_list.add(params[:tag_list],parse:true)
    if student_signed_in?
    	@infolet.set_student!(current_student)
	respond_to do |format|
        	if @infolet.save
		#	if ((Infolet.find((Infolet.find(@infolet.parent_id)).parent_id).present? ? Infolet.find((Infolet.find(@infolet.parent_id)).parent_id) : @infolet).role =~ /exam/)

		#		format.html { redirect_to students_home_exam_path(:ex_id => (Infolet.find((Infolet.find(@infolet.parent_id)).parent_id).present? ? Infolet.find((Infolet.find(@infolet.parent_id)).parent_id) : @infolet).id),notice: 'Answer saved.' }
		#	else	
				format.html { redirect_to students_home_index_path, notice: 'Infolet was successfully created.' }
		#	end
		        format.json { render :show, status: :created, location: @infolet }
	        else
        		format.html { render :new }
		        format.json { render json: @infolet.errors, status: :unprocessable_entity }
	        end
	end
      elsif (teacher_signed_in?)
	if (params[:role] == "sec_assignment" or params[:role] == "class_assignment" or params[:role] == "school_assignment" or params[:role] == "group_assignment" or params[:role] == "subject_notes")
	puts "Debug"
	puts params[:subject_id]
	puts current_teacher.tcontracts.where("subject_id = ?",params[:subject_id]).first.id
 	end
	@infolet.set_teacher!(current_teacher)
	if (@infolet.scf_name.present? and @infolet.scf_text.present? and (@infolet.role == "sec_assignment" or @infolet.role == "class_assignment" or @infolet.role == "school_assignment" or @infolet.role == "group_assignment") )
                puts "rails g scaffold " + @infolet.scf_name + " " + @infolet.scf_text
		puts "rails g scaffold custom_forms/" + @infolet.scf_name + " " + @infolet.scf_text + "  --no-assets --no-fixture --no-scaffold-stylesheet --no-jbuilder"
		system "cd /Users/sundar/lab/events/2.Aatmanirbhar_AppDev/Shiksha"
		puts "/Users/sundar/lab/events/2.Aatmanirbhar_AppDev/Shiksha"
                system "cd /Users/sundar/lab/events/2.Aatmanirbhar_AppDev/Shiksha;rails g scaffold custom_forms/#{@infolet.scf_name} #{@infolet.scf_text} --no-assets --no-fixture --no-scaffold-stylesheet --no-jbuilder"
                system "cd /Users/sundar/lab/events/2.Aatmanirbhar_AppDev/Shiksha;rails db:migrate"
        end
		respond_to do |format|
  			if @infolet.save
				 if (Infolet.find(@infolet.parent_id.present? ? @infolet.parent_id : @infolet.id).role =~ /exam/)
                           	     format.html { redirect_to teachers_home_exam_path(:ex_id => @infolet.parent_id.present? ? @infolet.parent_id : @infolet.id), notice: 'Question saved.' }
                        	else
                        	     format.html { redirect_to teachers_home_index_path, notice: 'Infolet was successfully created.' }
				end
                        	format.json { render :show, status: :created, location: @infolet }
                	else
                        	format.html { render :new }
                        	format.json { render json: @infolet.errors, status: :unprocessable_entity }
                	end		
    		end
	end
	
   end

  # PATCH/PUT /infolets/1
  # PATCH/PUT /infolets/1.json
  def update
    respond_to do |format|
      if @infolet.update(infolet_params)
        format.html { redirect_to @infolet, notice: 'Infolet was successfully updated.' }
        format.json { render :show, status: :ok, location: @infolet }
      else
        format.html { render :edit }
        format.json { render json: @infolet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infolets/1
  # DELETE /infolets/1.json
  def destroy
    @infolet.destroy
    respond_to do |format|
      format.html { redirect_to infolets_url, notice: 'Infolet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infolet
      @infolet = Infolet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infolet_params
      params.require(:infolet).permit(:student_id, :teacher_id,:content,:tag_list,:parent_id,:role,:subject_id,:tcontract_id,:scf_name, :scf_text)
    end
end
