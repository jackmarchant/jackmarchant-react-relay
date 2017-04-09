class HomeController < ApplicationController
  require 'http'

  def show
    render html: get_route.html_safe
  end

  private
    def get_route
      HTTP.get("https://react-render.herokuapp.com/home").to_s
    end
end
