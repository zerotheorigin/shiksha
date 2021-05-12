# frozen_string_literal: true

class Students::RegistrationsController < Devise::RegistrationsController
   before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def resource 

	@student ||= Section.find(session[:section_id]).students.new
  end

  # GET /resource/sign_up
   def new
	if (session[:section_id].nil?)
		session[:login_type] = "student_login"
        	redirect_to search_city_path
	else
		super
	end
   end
  

  # POST /resource
   def create
     if (session[:section_id].nil?)
	session[:login_type] = "student_login"
	redirect_to search_city_path
     else
	super
     end
   end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
     devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:DOB,:DOJS,:admission_no,:exam_reg_no,:gender,:street1,:street2,:location,:city,:pincode,:section_id])
   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
   def after_sign_up_path_for(resource)
     super(resource)
     students_home_index_path
   end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
