Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'principal#inicio', :as => :inicio
  get '/acerca-de' => 'principal#acerca', :as => :acerca
  get '/colaboradores' => 'principal#colaboradores', :as => :colaboradores
  get '/seminarios' => 'principal#seminarios', :as => :seminarios
  get '/multimedia' => 'principal#multimedia', :as => :multimedia

  root to: 'principal#inicio'
end
