Rails.application.routes.draw do
  resources :high_scores
  devise_for :users

  root to: 'high_scores#index'

	# Identify Provider - saml IDP
	get '/idp/saml/auth' => 'saml_idp#new'
end
