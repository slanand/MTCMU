MoneyThinkCMU::Application.routes.draw do
  resources :resources

  resources :classroom_lessons

  resources :lessons

  resources :mentee_attendances

  resources :mentee_participations

  resources :mentees

  resources :classrooms
  resources :teachers
  resources :schools
  resources :meeting_types
  resources :public_events
  resources :meetings
  resources :excuses
  resources :members

  
  get "home/index"
  get "home/about"
  get "home/contact"

  # semi-static routes
  get 'home', to: 'home#index', as: :home
  get 'home/about', to: 'home#about', as: :about
  get 'home/contact', to: 'home#contact', as: :contact
  get 'home/index', to: 'home#index', as: :index

  # set the root url
  root to: 'home#index'
end
