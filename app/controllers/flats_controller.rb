require "open-uri"

class FlatsController < ApplicationController

  def index
    # GET ALL THE FLATS
    # MAKE THEM AVAILABLE TO THE VIEW
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end

  def show
    # raise # STOP THE CODE EXECUTION
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(URI.open(url).read)
    # we need to retrieve the correct flat
    # params["id"] brings the :id part of the URL
    @flat = flats.find do |flat|
      flat["id"] == params[:id].to_i
    end
    # we need to make it available to the view
  end
end
