Rails.application.routes.draw do


  resources :standup_team_members
  resources :standups
  resources :groups
  resources :team_members
end
