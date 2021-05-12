class Students::HomeController < ApplicationController
before_action :authenticate_student!
respond_to :html,:js,:json,:xml,:ssr

  def index
	@class_mates = list_class_mates
	@subjects = list_subjects

    p_subj = params[:subject] || current_student.section.subjects.sample.id
       # Form incoming_ilets
    @infolet = Infolet.new

	@incoming_ilets= []
	@incoming_assign_ilets = []
	@incoming_class_ilets = []
	@incoming_school_ilets = []
	@incoming_edugroup_ilets =[]
	@incoming_board_ilets = []
    @incoming_snotes_ilets = []
        
	@my_incoming_ilets_count = my_incoming_class_ilets_count=0

	# incoming_ilets formation
        current_student.section.subjects.each do |subj|
                unless subj.teachers.empty?
                        @incoming_ilets.append subj.teachers.first.infolets.where("subject_id=? and parent_id is null and role like ?",subj.id,'%sec_feed%').order(role: :asc,created_at: :desc)
                        @incoming_assign_ilets.append subj.teachers.first.infolets.where("subject_id=? and parent_id is null and role like ?",subj.id,'%assignment%').order(role: :asc,created_at: :desc)
                end
        end
        current_student.section.students.each do |connexion|
                @incoming_ilets.append connexion.infolets.where("parent_id is null and role like ?",'%sec_feed%').order(created_at: :desc)
        end
	
	#incoming_class_ilets formation
	l_std = current_student.section.std
	current_student.section.school.sections.where("std = ?",l_std).each do |sec|
		sec.subjects.each do |subj|
			unless subj.teachers.empty?
                       	@incoming_class_ilets.append subj.teachers.first.infolets.where("subject_id = ? and parent_id is null and role like ?",subj.id,'%class_feed%').order(role: :asc,created_at: :desc)
                	end
		end
	end
	
	#SChool ilets formation
        current_student.section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_school_ilets.append subj.teachers.first.infolets.where("subject_id =? and parent_id is null and role like ?",subj.id,'%school_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end

	#EduGroup ilets formation
        current_student.section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_edugroup_ilets.append subj.teachers.first.infolets.where("subject_id = ? and parent_id is null and role like ?",subj.id,'%edu_group_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end
	
	#Board ilets formation
        current_student.section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_board_ilets.append subj.teachers.first.infolets.where("subject_id = ? and parent_id is null and role like ?",subj.id , '%board_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end	

    current_student.section.subjects.each do |subj|
        ct_tc = subj.tcontracts.first
        tmp_sn_ilets = []
        unless  ct_tc.nil? or ct_tc.infolets.empty? or ct_tc.infolets.where('role like ?','%subject_notes%').empty?
                    tmp_sn_ilets.append ct_tc.infolets.where('role like ?','%subject_notes%')
                    @incoming_snotes_ilets[ct_tc.id] = tmp_sn_ilets
        end
        
    end
    puts @incoming_snotes_ilets.inspect        
    @subj = Subject.find(p_subj)
    @infolet = Infolet.new
    respond_to do |format|
        format.html
        format.js {render json: @incoming_ilets}
        format.json {render json: @incoming_ilets}

    end
    #respond_with(@incoming_ilets)
end

  def sec_feed


    p_subj = params[:subject] || current_student.section.subjects.sample.id
    @incoming_ilets= []
	@incoming_assign_ilets = []
	
    @my_incoming_ilets_count = my_incoming_class_ilets_count=0

	# incoming_ilets formation
        current_student.section.subjects.each do |subj|
                unless subj.teachers.empty?
                        @incoming_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%sec_feed%').order(role: :asc,created_at: :desc)
                end
        end
        current_student.section.students.each do |connexion|
                @incoming_ilets.append connexion.infolets.where("parent_id is null and role like ?",'%feed%').order(created_at: :desc)
        end
	   
    respond_to do |format|
        format.html
        format.js 
        format.json {render json: @incoming_ilets}

    end
  end
  def class_feed

    # Form incoming_ilets
    @infolet = Infolet.new
    p_subj = params[:subject] || current_student.section.subjects.sample.id
    @incoming_class_ilets = []
    
    @my_incoming_ilets_count = @my_incoming_class_ilets_count=0

    #incoming_class_ilets formation
    l_std = current_student.section.std
    current_student.section.school.sections.where("std = ?",l_std).each do |sec|
        sec.subjects.each do |subj|
            unless subj.teachers.empty?
                        @incoming_class_ilets.append subj.teachers.first.infolets.where("subject_id = ? and parent_id is null and role like ?",subj.id,'%class_feed%').order(role: :asc,created_at: :desc)
                    end
        end
    end
       
    respond_to do |format|
        format.html
        format.js 
        format.json {render json: @incoming_class_ilets}

    end
end
def school_feed
    @incoming_school_ilets = []
        #SChool ilets formation
        current_student.section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_school_ilets.append subj.teachers.first.infolets.where("subject_id =? and parent_id is null and role like ?",subj.id,'%school_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end
    respond_to do |format|
        format.html
        format.js 
        format.json {render json: @incoming_school_ilets}
    end

end
def edugroup_feed
    @incoming_edugroup_ilets = []
   #EduGroup ilets formation
    current_student.section.school.sections.each do |sec|
            sec.subjects.each do |subj|
                    unless subj.teachers.empty?
                    @incoming_edugroup_ilets.append subj.teachers.first.infolets.where("subject_id = ? and parent_id is null and role like ?",subj.id,'%edu_group_feed%').order(role: :asc,created_at: :desc)
                    end
            end
    end
    respond_to do |format|
        format.html
        format.js 
        format.json {render json: @incoming_edugroup_ilets}
    end

end
def board_feed
    @incoming_board_ilets = []
   #EduGroup ilets formation
#Board ilets formation
    current_student.section.school.sections.each do |sec|
            sec.subjects.each do |subj|
                    unless subj.teachers.empty?
                    @incoming_board_ilets.append subj.teachers.first.infolets.where("subject_id = ? and parent_id is null and role like ?",subj.id , '%board_feed%').order(role: :asc,created_at: :desc)
                    end
            end
    end 
    respond_to do |format|
        format.html
        format.js 
        format.json {render json: @incoming_board_ilets}
    end

end
 def assign_feed


    p_subj = params[:subject] || current_student.section.subjects.sample.id
    
    @incoming_assign_ilets = []
    
    @my_incoming_ilets_count = my_incoming_class_ilets_count=0
# incoming_ilets formation
        current_student.section.subjects.each do |subj|
                unless subj.teachers.empty?
                        @incoming_assign_ilets.append subj.teachers.first.infolets.where("subject_id=? and parent_id is null and role like ?",subj.id,'%assignment%').order(role: :asc,created_at: :desc)
                end
        end
    respond_to do |format|
        format.html
        format.js 
        format.json {render json: @incoming_assign_ilets}

    end
  end
  def list_class_mates
	@class_mates = current_student.section.students	
  end
  def class_teahcer
	@subjects = list_subjects
  end
  def list_subjects
	@subjects = current_student.section.subjects
  end
  def feed
  end
  def search
	@class_mates = list_class_mates
        @subjects = list_subjects

    	p_subj = params[:subject] || current_student.section.subjects.sample.id
       	
	# Form incoming_ilets
    	
	@infolet = Infolet.new
	@subj = Subject.find(p_subj)
        @incoming_ilets= []
        @incoming_assign_ilets = []
        @incoming_class_ilets = []
        @incoming_school_ilets = []
        @incoming_edugroup_ilets =[]
        @incoming_board_ilets = []
    	@incoming_snotes_ilets = []

        @my_incoming_ilets_count = my_incoming_class_ilets_count=0


	if (params[:tag] != nil)
		ilets = Infolet.tagged_with(params[:tag])
                @incoming_ilets[0]=  ilets
                puts "Inside tag_fetch"
                puts @incoming_ilets

                unless ilets.nil?
                        @total_theater_ilets_count = ilets.count
                else
                        @total_theater_ilets_count = 0
                end
                @notice = "Found #{@total_theater_ilets_count} Infolets for #" + params[:tag]
	elsif (params[:search] != nil)
                ilets = Infolet.joins(:action_text_rich_text).where("action_text_rich_texts.body LIKE ?", "%#{params[:search]}%")
                @incoming_ilets[0]=  ilets
                unless ilets.nil?
                        @total_theater_ilets_count = ilets.count
                else
                        @total_theater_ilets_count = 0
                end    
                @notice = "Found #{ @total_theater_ilets_count} Infolets for " + params[:search]
	end
  end 
  def exam_detail
        @exam_ilet = Infolet.where("role like ? and id=? ", '%exam%',params[:ex_id]).first
  end
end
