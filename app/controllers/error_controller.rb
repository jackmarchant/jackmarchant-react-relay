class ErrorController < ApplicationController
  def error_404
    @error_text = "This page does not exist."
    render 'error/404'
  end
end