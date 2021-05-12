class School::HomeController < ApplicationController
  def index
	sch_id = params[:sch_id]
	@school = School.find(sch_id)
  end

  def search
  end
end
