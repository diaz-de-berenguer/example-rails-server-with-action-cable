class HomeController < ApplicationController
  def welcome
  	render html: "Welcome"
  end
end
