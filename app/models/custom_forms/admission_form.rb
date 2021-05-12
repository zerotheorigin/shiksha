class CustomForms::AdmissionForm < ApplicationRecord
	validates_presence_of :name,presence: true
	validates_uniqueness_of :name
end
