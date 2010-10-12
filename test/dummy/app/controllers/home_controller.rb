class HomeController < ApplicationController
  def index
    render :inline => "<%= foo %>"
  end
end
