class HomeController < ApplicationController
  require 'http'

  def show
    render html: get_route.html_safe
  end

  private
    def get_route
      HTTP.get(ENV["REACT_RENDER_URI"]).to_s
    end
end
