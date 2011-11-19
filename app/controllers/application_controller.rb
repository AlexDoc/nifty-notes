class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :choose_layout

  def choose_layout
    request.xhr?? false : 'application'
  end
end
