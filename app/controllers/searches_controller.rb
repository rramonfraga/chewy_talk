class SearchesController < ApplicationController
  def index
    @search =SearchesIndex.search(params[:search]).load.to_a
  end
end
