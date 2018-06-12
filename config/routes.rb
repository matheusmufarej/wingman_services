Rails.application.routes.draw do
  root :to => "venues#index"
  # Routes for the Approach resource:
  # CREATE
  get "/approaches/new", :controller => "approaches", :action => "new"
  post "/create_approach", :controller => "approaches", :action => "create"

  # READ
  get "/approaches", :controller => "approaches", :action => "index"
  get "/approaches/:id", :controller => "approaches", :action => "show"

  # UPDATE
  get "/approaches/:id/edit", :controller => "approaches", :action => "edit"
  post "/update_approach/:id", :controller => "approaches", :action => "update"

  # DELETE
  get "/delete_approach/:id", :controller => "approaches", :action => "destroy"
  #------------------------------

  # Routes for the Opener resource:
  # CREATE
  get "/openers/new", :controller => "openers", :action => "new"
  post "/create_opener", :controller => "openers", :action => "create"

  # READ
  get "/openers", :controller => "openers", :action => "index"
  get "/openers/:id", :controller => "openers", :action => "show"

  # UPDATE
  get "/openers/:id/edit", :controller => "openers", :action => "edit"
  post "/update_opener/:id", :controller => "openers", :action => "update"

  # DELETE
  get "/delete_opener/:id", :controller => "openers", :action => "destroy"
  #------------------------------

  # Routes for the Style resource:
  # CREATE
  get "/styles/new", :controller => "styles", :action => "new"
  post "/create_style", :controller => "styles", :action => "create"

  # READ
  get "/styles", :controller => "styles", :action => "index"
  get "/styles/:id", :controller => "styles", :action => "show"

  # UPDATE
  get "/styles/:id/edit", :controller => "styles", :action => "edit"
  post "/update_style/:id", :controller => "styles", :action => "update"

  # DELETE
  get "/delete_style/:id", :controller => "styles", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
