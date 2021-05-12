class SearchController < ApplicationController
  
  def city
	@cities = School.distinct.pluck(:city)
  end

  def location
  end

  def school
  end

  def section
  end
  def school
	@city = params[:qc]
	@schools = School.where("city=?",@city).order(created_at: :asc)
  end
  def section
	@sch = School.find(params[:school])
	@sects = @sch.sections
  end
  def select_section
	if (params[:section] != "" and session[:login_type] == "teacher_login")
		@subjects = Section.find(params[:section]).subjects
	elsif (params[:section] != "" and session[:login_type] == "student_login")
		session[:section_id] = params[:section]
		redirect_to new_student_registration_path
	end
  end
  def select_subject
	if (params[:subject] != "" and session[:login_type] == "teacher_login")
                session[:subject_id] = params[:subject]
                redirect_to new_teacher_registration_path
        end	
  end
end
