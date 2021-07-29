Rails.application.routes.draw do



 
  get 'home/index', to: "home#index"
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :students
  resources :admins
  resources :studentsessions, only: [:new, :create, :destroy]
  resources :adminsessions, only: [:new, :create, :destroy]

  get "home", to: "home#index", as: "home"
  get "student_signup", to: "students#new", as: "student_signup"
  get "student_login", to: "studentsessions#new", as: "student_login"
  get "student_logout", to: "studentsessions#destroy", as: "student_logout"

  get "admin_signup", to: "admins#new", as: "admin_signup"
  get "admin_login", to: "adminsessions#new", as: "admin_login"
  get "admin_logout", to: "adminsessions#destroy", as: "admin_logout"

  get "maketeam", to: "teams#new", as: "maketeam"
  get "addcourse", to: "courses#new", as: "addcourse"
  get "createproject", to: "project#new", as: "createproject"

  
end


