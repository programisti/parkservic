Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  get 'how' => 'how#index'
  get 'about' => 'about#index'
  get 'pricing' => 'pricing#index'
  get 'home' => 'home#index'
  get 'contact' => 'contact#index'
  get 'faq' => 'faq#index'
  get 'map' => 'map#index'
  get 'terms' => 'term#index'
  get 'send_mail2' => 'contact#send_mail2'
  post 'send_mail' => 'contact#send_mail'
  root 'home#index'

end
