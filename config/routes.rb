Rails.application.routes.draw do
# only: or except: to limit the user with the options you want him
# or her to have.
  resources :cocktails, only: [: ]
  resources :doses, only: [: ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


# create
# delete
# edit
# indx

# show
# new
# update

