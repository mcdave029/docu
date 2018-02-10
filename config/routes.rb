Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resource is a shorthand method to put all basic routing on the resource you point on me its documents or the name of controller
  # now type rails routes to check it
  resource :documents do
    # this is how you specify custom actions on your controller
    # strictly do not provide something like "/path/to/action", to "controller#action", as: "alias_to_your_action"
    # just do ther rails way btw this method is not existed in controller so this may cause error
    # just leaving it here for references
    collection do
      put   :custom_action_one
      post  :custom_action_two
    end
  end
end
