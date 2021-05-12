class Infolet < ApplicationRecord
  belongs_to :student,optional: true
  belongs_to :teacher,optional: true

  belongs_to :subject,optional: true
  belongs_to :section,optional: true
  belongs_to :school,optional: true

  belongs_to :tcontract,optional: true

  acts_as_taggable_on :tags, :int_tags
  validates_uniqueness_of :scf_name,:allow_nil=> true,:allow_blank => true
 
	has_rich_text :content
	has_many_attached :images
	has_many :comments,:class_name => "Infolet" , :foreign_key => "parent_id"
	#has_many :infolet_shares
	has_one :action_text_rich_text,
	    class_name: 'ActionText::RichText',
    	    as: :record

	ROLES = %i[sec_feed class_feed school_feed edu_group_feed board_feed sec_assignment class_assignment school_assignment group_assignment exam_across_section exam_across_class exam_across_edugroup exam_across_board subject_notes profile]

def set_student!(student)
    self.student_id = student.id
    self.save!
end
def set_tcontract_id(tcontract_id)
	self.tcontract_id = tcontract_id
	self.save!
end
def set_teacher!(teacher)
	self.teacher_id = teacher.id
	self.save!
end

end
