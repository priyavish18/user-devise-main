class ApplicationController < ActionController::Base
	 protect_from_forgery unless: -> { request.format.json? }
	 protect_from_forgery with: :null_session

	 before_action :authenticate_user!
	 
	 include ApplicationHelper
end
