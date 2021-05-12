class Teachers::HomeController < ApplicationController
before_action :authenticate_teacher!
  def index
	p_subj = params[:subject] || current_teacher.subject_id
     
    unless p_subj.nil?
	
	@incoming_ilets= []
        @incoming_assign_ilets = []
	@incoming_class_ilets = []
        @incoming_school_ilets = []
        @incoming_edugroup_ilets =[]
        @incoming_board_ilets = []
        @incoming_snotes_ilets = []
	
	#School stats
	@school_name = Subject.find(p_subj).section.school.name
	@school_teachers = []
	@school_studs = 0
	Subject.find(p_subj).section.school.sections.each do |sec|
		@school_studs += sec.students.count
		sec.subjects.each do |sub|
			@school_teachers.append sub.teachers.uniq
		end
	end
	@uniq_school_teachers = @school_teachers.uniq.count
	@max_std = Subject.find(p_subj).section.school.sections.maximum("std")
	
	# incoming_ilets formation
        
	@incoming_ilets.append current_teacher.infolets.where("parent_id is null and role like ?",'%sec_feed%').order(created_at: :desc)
	@incoming_assign_ilets.append current_teacher.infolets.where("parent_id is null and role like ?",'%assignment%').order(created_at: :desc)

	Subject.find(p_subj).section.students.each do |connexion|
                @incoming_ilets.append connexion.infolets.where("parent_id is null and role like ?",'%sec_feed%').order(created_at: :desc)
        end
	
	#incoming_class_ilets formation
	l_std = Subject.find(p_subj).section.std
	Subject.find(p_subj).section.school.sections.where("std = ?",l_std).each do |sec|
		sec.subjects.each do |subj|
			unless subj.teachers.empty?
       	                	@incoming_class_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%class_feed%').order(role: :asc,created_at: :desc)
                	end
		end
	end
	
	#SChool ilets formation
        Subject.find(p_subj).section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_school_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%school_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end

	#EduGroup ilets formation
        Subject.find(p_subj).section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_edugroup_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%edu_group_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end
	
	#Board ilets formation
        Subject.find(p_subj).section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_board_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%board_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end	
	current_teacher.subjects.each do |subj|
		ct_tc = subj.tcontracts.where("teacher_id=?",current_teacher.id).first
		tmp_sn_ilets = []
		unless  subj.tcontracts.where("teacher_id=?",current_teacher.id).first.infolets.empty?
        	        tmp_sn_ilets.append ct_tc.infolets
        	end
		@incoming_snotes_ilets[ct_tc.id] = tmp_sn_ilets
	end
	puts @incoming_snotes_ilets.inspect
	@subj = Subject.find(p_subj)
	@class_mates = list_class_mates(@subj.section.id)
	@infolet = Infolet.new
    end	
  end

  def search
       p_subj = params[:subject] || current_teacher.subjects.first.id

    unless p_subj.nil?

        @incoming_ilets= []
        @incoming_assign_ilets = []
        @incoming_class_ilets = []
        @incoming_school_ilets = []
        @incoming_edugroup_ilets =[]
        @incoming_board_ilets = []


        # incoming_ilets formation

        @incoming_ilets.append current_teacher.infolets.where("parent_id is null and role like ?",'%sec_feed%').order(created_at: :desc)
        @incoming_assign_ilets.append current_teacher.infolets.where("parent_id is null and role like ?",'%assignment%').order(created_at: :desc)

        Subject.find(p_subj).section.students.each do |connexion|
                @incoming_ilets.append connexion.infolets.where("parent_id is null and role like ?",'%sec_feed%').order(created_at: :desc)
        end

        #incoming_class_ilets formation
        l_std = Subject.find(p_subj).section.std
        Subject.find(p_subj).section.school.sections.where("std = ?",l_std).each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                                @incoming_class_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%class_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end

        #SChool ilets formation
        Subject.find(p_subj).section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_school_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%school_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end

        #EduGroup ilets formation
        Subject.find(p_subj).section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_edugroup_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%edu_group_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end
      #Board ilets formation
        Subject.find(p_subj).section.school.sections.each do |sec|
                sec.subjects.each do |subj|
                        unless subj.teachers.empty?
                        @incoming_board_ilets.append subj.teachers.first.infolets.where("parent_id is null and role like ?",'%board_feed%').order(role: :asc,created_at: :desc)
                        end
                end
        end
        @subj = Subject.find(p_subj)
        @class_mates = list_class_mates(@subj.section.id)
        @infolet = Infolet.new
    end

  end
  def list_class_mates(section_id)
	@class_mates = Section.find(section_id).students	
  end
  def class_teahcer
  end
  def list_subjects(section_id)
	@subjects = Section.find(section_id).subjects
  end
  def section_feed(section_id)
	# Form incoming_ilets
	@infolet = Infolet.new

	@incoming_ilets = []

        @my_incoming_ilets_count = 0
	
	Section.find(section_id).subjects.each do |subj|
		unless subj.teacher.nil?
			@incoming_ilets.append subj.teacher.infolets.where("parent_id is null and role like ?",'%feed%').order(created_at: :desc)
                	@my_incoming_ilets_count += subj.teacher.infolets.count
		end
	end
	Section.find(section_id).students.each do |connexion|
                @incoming_ilets.append connexion.infolets.where("parent_id is null and role like ?",'%feed%').order(created_at: :desc)
                @my_incoming_ilets_count += connexion.infolets.count
        end
	return @incoming_ilets
  end
  def exam_detail
	@exam_ilet = current_teacher.infolets.where("role like ? and id=? ", '%exam%',params[:ex_id]).first
  end	

end
