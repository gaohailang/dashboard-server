class ApplicationController < ActionController::Base
  # protect_from_forgery
  after_action :allow_iframe

  def allow_iframe
    response.headers.except! 'X-Frame-Options'
    response.headers.except! 'X-Xss-Protection'
    response.headers.except! 'X-Content-Type-Options'
  end
end
