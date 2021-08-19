Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}# Important to have this line added to the routes  
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/events', to: 'userevents#displayhostedevents'
  get 'users/all', to: 'userevents#allUsers'
  get 'users/invitemanager', to: 'userevents#EventsToAttend'
  get 'users/attend', to: 'userevents#attend'
  get 'users/invitedevents', to: 'userevents#associatedEvents'
  resources :userevents

  resources :invites


  root "events#index"
end
