Rails.application.routes.draw do

  resources :questions do
    resources :responses, only: [ :new, :create, :edit, :update, :destroy ]
  end

  post 'questions/upvote'

  post 'responses/upvote'

  resources :schools

  resources :profiles

  devise_for :users,
           :controllers  => {
             :registrations => 'my_devise/registrations',
             # ...
           }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
