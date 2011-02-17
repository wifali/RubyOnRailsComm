RailsTutorial::Application.routes.draw do

    
  root :to => 'pages#home'
  
  match '/contact', :to => 'pages#contact'
  match '/sitemap',   :to => 'pages#sitemap'
  match '/references',    :to => 'pages#references'
  
end
