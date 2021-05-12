class School < ApplicationRecord
	has_many :sections
	has_many :infolets

def create_sections(sch_std,start_section,end_section)
                [(start_section..end_section)].map(&:to_a).flatten.each do |l_sec|
			self.sections.create(std: sch_std ,sec: l_sec)
		 end 

end

end
