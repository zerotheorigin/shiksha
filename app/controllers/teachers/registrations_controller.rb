# frozen_string_literal: true

class Teachers::RegistrationsController < Devise::RegistrationsController
    before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def resource 

	@teacher ||= Subject.find(session[:subject_id]).teacher.new
  end
  # GET /resource/sign_up
   def new
     if (session[:subject_id].nil?)
	session[:login_type] = "teacher_login"
        redirect_to search_city_path
     else
        super
     end
   end

  # POST /resource
   def create
     if (session[:subject_id].nil?)
	session[:login_type] = "teacher_login"
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
     devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :DOB, :DOJS, :staff_no, :gender, :street1, :street2, :location, :city, :pincode, :qualification, :family_work_street1, :family_work_street2, :family_work_location, :family_work_city, :family_work_pincode, :family_mobile1, :family_mobile2, :family_work_ph, :class_teacher, :subject_id])
   end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
   def after_sign_up_path_for(resource)
     super(resource)
     teachers_home_index_path
   end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
