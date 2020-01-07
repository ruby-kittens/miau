class CatsController < ApplicationController
  def index
    @cats = ["Carlo", "Merle", "Puppy", "Tarzan", "Mausi"] 
  end
end
