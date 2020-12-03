class ApplicationController < ActionController::Base
  before_action :authenticate_user!
end

def default_url_options
  { host: "www.universaly.work" || "localhost:3000" }
  # { host: ENV["www.universaly.work/"] || "localhost:3000" }
  # { host: "localhost:3000" }
end
