Rails.application.routes.draw do

  root 'home#welcome'
  get '/send' => 'home#send_message'

  mount ActionCable.server => '/cable'
end
