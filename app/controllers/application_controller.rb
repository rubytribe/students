class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include ApplicationHelper
  
  before_action :save_url, only: [:index, :show]
  
  
  private
    
    def save_url
      session[:last_url] = request.original_url
    end
  
end
