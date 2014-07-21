module ApplicationHelper
  
  def redirect_back_or(default)
    if session[:last_url]
      redirect_to session[:last_url]
      session[:last_url] = nil
    else
      redirect_to default
    end
  end
  
end
