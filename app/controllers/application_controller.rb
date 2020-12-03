class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

def default_url_options
  { host: ENV["www.universaly.work/"] || "localhost:8080" }
  # { host: ENV["www.universaly.work/"] || "localhost:3000" }
  # { host: "localhost:3000" }
end
