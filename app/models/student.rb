class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable
  belongs_to :section
  has_many :infolets

 statuses = %i[new approved suspended banned left alumni]

def list_edit_details

html_string ="" 
        html_string +=  "<div> First Name </div>" 
        html_string +=  "<div>" +  self.first_name + "</div>"
        html_string +=  "<div> Last Name </div>"
        html_string +=  "<div>" +  self.last_name + "</div>"
        html_string +=  "<div> Email </div>"
        html_string += "<div>" +  self.email + "</div>"
        html_string +=  "<div> Date of Joining School </div>"
        html_string += "<div>" +  self.DOJS.to_s + "</div>"
        html_string +=  "<div> Gender  </div>"
        html_string += "<div>" +  self.gender + "</div>"
        html_string +=  "<div> Email </div>"
        html_string += "<div>" +  self.email + "</div>"

        html_string +=  "<div> Street1</div>" 
        html_string +=  "<div>" +  self.street1.to_s  + "</div>"
        html_string +=  "<div> Street2 </div>"
        html_string +=  "<div>" +  self.street2.to_s + "</div>"
        html_string +=  "<div> Location </div>"
        html_string += "<div>" +  self.location.to_s + "</div>"
        html_string +=  "<div> City</div>"
        html_string += "<div>" +  self.city.to_s + "</div>"
        html_string +=  "<div> Pincode </div>"
        html_string += "<div>" +  self.pincode.to_s + "</div>"

        return html_string.html_safe

end
def list_basic_details
html_string =""
	html_string +=	"<div> First Name </div>" 
	html_string +=  "<div>" +  self.first_name + "</div>"
	html_string +=  "<div> Last Name </div>"
	html_string +=  "<div>" +  self.last_name + "</div>"
	html_string +=  "<div> Email </div>"
	html_string += "<div>" +  self.email + "</div>"
	html_string +=  "<div> Date of Joining School </div>"
        html_string += "<div>" +  self.DOJS.to_s + "</div>"
	html_string +=  "<div> Gender  </div>"
        html_string += "<div>" +  self.gender + "</div>"
	html_string +=  "<div> Email </div>"
        html_string += "<div>" +  self.email + "</div>"
	
	return html_string.html_safe
end
def list_basic_tr
html_string ="<tr>"
        html_string +=  "<td>" +  self.first_name + "</td>"
        html_string +=  "<td>" +  self.last_name + "</td>"
        html_string += "<td>" +  self.email + "</td>"
        html_string += "<td>" +  self.DOJS.to_s + "</td>"
        html_string += "<td>" +  self.gender + "</td>"
        html_string += "<td>" +  self.email + "</td>"
	html_string += "</tr>"

        return html_string.html_safe
end
end
