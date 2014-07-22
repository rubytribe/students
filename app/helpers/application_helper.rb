module ApplicationHelper
  
  def redirect_back(last_url, default)
    redirect_to(last_url || default)
  end

    
end
