class HomeController < ApplicationController
  
  before_action do
  
    require "browser"
  
    browser = Browser.new(request.user_agent)
    
    request.variant = :mac if  browser.platform.mac?
    request.variant = :win if  browser.platform.windows?
    
  end
  
  def index
    
    require "browser"
  
    browser = Browser.new(request.user_agent)
    p browser.platform.mac?
    p browser.platform.windows?
  end
end
