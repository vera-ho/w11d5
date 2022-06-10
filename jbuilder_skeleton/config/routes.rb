Rails.application.routes.draw do
  # Your routes here!

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    resources :guests, only: [:show, :index] do
      resources :gifts, only: [:index]
    end

    resources :gifts, only: [:show]
    resources :parties, only: [:show, :index]
  end
  
#          Prefix Verb URI Pattern                           Controller#Action
# api_guest_gifts GET  /api/guests/:guest_id/gifts(.:format) api/gifts#index {:format=>:json}
#      api_guests GET  /api/guests(.:format)                 api/guests#index {:format=>:json}
#       api_guest GET  /api/guests/:id(.:format)             api/guests#show {:format=>:json}
#        api_gift GET  /api/gifts/:id(.:format)              api/gifts#show {:format=>:json}
#     api_parties GET  /api/parties(.:format)                api/parties#index {:format=>:json}
#       api_party GET  /api/parties/:id(.:format)            api/parties#show {:format=>:json}

end
