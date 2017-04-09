class HomeController < ApplicationController
  def show
    data = {heading: "Hello World"}
    render html: get_route(data)
  end

  private
    def get_route(data)
      ReactRender.new(data).perform.html_safe
    end
end
