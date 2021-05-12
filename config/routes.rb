Rails.application.routes.draw do
  namespace :custom_forms do
    resources :sanjeevi_forms
  end
  namespace :school do
    get 'home/index'
    get 'home/search'
  end
  resources :time_slots
  namespace :custom_forms do
    resources :tamil_forms
  end
  namespace :custom_forms do
    resources :anand_yogo_lists
  end
  namespace :custom_forms do
    resources :test_forms
  end
  namespace :custom_forms do
    resources :sundar_assign_4_forms
  end
  namespace :custom_forms do
    resources :sundar_assign_3_forms
  end
  namespace :custom_forms do
    resources :sundar_assign_2_forms
  end
  namespace :custom_forms do
    resources :sundar_assign_1_forms
  end
  namespace :custom_forms do
    resources :sarat_demo_1_forms
  end
  namespace :custom_forms do
    resources :sriram_english_q_papers
  end
  namespace :custom_forms do
    resources :kannan_forms
  end
  namespace :custom_forms do
    resources :admission_forms
  end
  namespace :custom_forms do
    resources :sundar_form2s
  end
  resources :gokul_demos
  resources :sundar_forms
  resources :karthick_demos
  resources :sridhar_forms
  resources :uma849_form5s
  resources :tcontracts
  resources :timetables
  get 'prepdb/school'
  get 'prepdb/section'
  get 'prepdb/subject'
  get 'prepdb/teacher'
  get 'prepdb/student'
  get 'prepdb/timetable'
  get 'prepdb/initdb'
  resources :infolets
  namespace :teachers do
    get 'home/index'
    root :to => 'teachers/home#index/:subject',:as => "teachers_root"
    match 'home/search'=> 'home#search', via: [:get,:post]
    match 'home/exam'=> 'home#exam_detail', via: [:get,:post]
  end
  namespace :students do
    get 'home/index'
    get 'home/sec_feed'
    get 'home/class_feed'
    get 'home/school_feed'
    get 'home/edugroup_feed'
    get 'home/board_feed'
    get 'home/assign_feed'
    get 'home/snotes_feed'
    #root :to => 'students/home#index',:as => "students_root"
     match 'home/search'=> 'home#search', via: [:get,:post]
     match 'home/exam'=> 'home#exam_detail', via: [:get,:post]
  end
  
  devise_for :teachers,controllers: { sessions: 'teachers/sessions',registrations: 'teachers/registrations' }
  devise_for :students,controllers: { sessions: 'students/sessions',registrations: 'students/registrations' }
  mount RailsAdmin::Engine => '/guru', as: 'rails_admin'
 resources :schools do
        resources :sections do
 		 resources :subjects do
			resources :teachers
  		 end
	end
 end
  resources :schools do
	resources :sections do
		resources :students
	end
  end
	
  match '/search_city' => 'search#city',via: [:get,:post]
  match '/search_school' => 'search#school',via: [:get,:post]
  match '/search_section' => 'search#section',via: [:get,:post]
  match '/select_section' => 'search#select_section',via: [:get,:post]
  match '/select_subject' => 'search#select_subject',via: [:get,:post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

root :to => 'students/home#index',:as => "students_root"
#root :to => 'teachers/home#index',:as => "teachers_root"

end
