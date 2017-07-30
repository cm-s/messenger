class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # utility function
  def readURI(section)
    uri = request.original_url
    uri.gsub!(/http:\W\W|https:\W\W/i, "")
    uri = uri.split(/\//i)
    return uri[section]
  end
end
