class Section < ApplicationRecord
  belongs_to :school
  has_many :students
  has_many :subjects
  has_many :infolets
  has_many :timetables

def create_random_timetable(dw,pd)
	for d in 1..dw do
		for p in 1..pd do
			print(d,p,"day and period")
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "8:45 AM",end_time: "9:30 AM") if p==1
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "9:30 AM",end_time: "10:15 AM") if p==2
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "10:30 AM",end_time: "11:15 AM") if p==3
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "11:15 AM",end_time: "12:00 PM") if p==4
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "1:00 PM",end_time: "1:45 PM") if p==5
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "1:45 PM",end_time: "2:30 PM") if p==6
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "2:45 PM",end_time: "3:30 PM") if p==7
			self.timetables.create(tt_day: d, tt_period: p , subject_id: self.subjects.all.sample.id,start_time: "3:30 PM",end_time: "4:15 PM") if p==8
		end
	end
	self.save
end	
end
