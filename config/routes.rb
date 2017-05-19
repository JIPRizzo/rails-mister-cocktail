Rails.application.routes.draw do
# only: or except: to limit the user with the options you want him
# or her to have.
  resources :cocktails, only: [:show, :index, :new, :create ]
  resources :doses, only: [:create ]
end

#     resources :doses, only: [:destroy]
#     root "cocktails#index"
# end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



# create
# delete
# edit
# indx

# show
# new
# update
