Rails.application.routes.draw do
  get 'event_answers/new'

  get 'event_answers/create'

  get 'event_answers/edit'

  get 'event_answers/update'

  get 'event_answers/destroy'

  get 'events/index'

  get 'events/show'

  get 'events/new'

  get 'events/create'

  get 'events/edit'

  get 'events/update'

  get 'events/destroy'

  get 'schools/index'

  get 'schools/show'

  get 'schools/new'

  get 'schools/create'

  get 'schools/edit'

  get 'schools/update'

  get 'schools/destroy'

  resources :profiles

  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
