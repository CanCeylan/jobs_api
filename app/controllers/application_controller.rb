class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :check_domain
  protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token
  after_filter :cors_set_access_control_headers

  include Authenticable

  def check_domain
    if Rails.env.production? and request.host.downcase != 'deriva.co'
      redirect_to request.protocol + 'deriva.co' + request.fullpath, :status => 301
    end
  end

  def cors_set_access_control_headers
  	headers['Access-Control-Allow-Origin'] = *
  	headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
  	headers['Access-Control-Request-Method'] = *
  	headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
