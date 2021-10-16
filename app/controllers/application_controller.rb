class ApplicationController < ActionController::Base
  before_action { Rack::MiniProfiler.authorize_request }
end
