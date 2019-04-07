Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :teams
    
  resources :team_members
  resources :users

  delete 'delete_team_member/:team_id/:user_id' => "teams#delete_team_member", as: "delete_team_member"
end
