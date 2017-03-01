Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "locations#index"
  get "locations" => "locations#index"
  get "locations/:id" => "locations#show", as: "location"
  get "locations/:id/edit" => "locations#edit", as: "edit_location"

end
