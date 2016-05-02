class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session 
  #With null_session we are saying that we don't care about authenticity, only works when we want to work 
  #wtih APIs. Our own website should be
end
