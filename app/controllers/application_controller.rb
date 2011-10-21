class ApplicationController < ActionController::Base

  protect_from_forgery
  helper :layouts

  before_filter :set_locale


  def set_locale
    # update session if passed
    session[:locale] = params[:locale] if params[:locale]

    # set locale based on session or default
    I18n.locale = session[:locale] || I18n.default_locale
  end

end
