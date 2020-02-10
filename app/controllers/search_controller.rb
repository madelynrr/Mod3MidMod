class SearchController < ApplicationController

  def index
    render locals: {
      search_results: OrderByHouseSearch.new(params[:house])
    }
  end

end
