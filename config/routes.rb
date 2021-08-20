Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {registrations: 'registrations'}# Important to have this line added to the routes  
  resources :events

  resources :userevents
  resources :invites
  get 'users/invitedevents', to: 'userevents#associatedEvents'


  root "events#index"
end
