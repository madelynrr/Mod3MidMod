class SearchController < ApplicationController

  def index
    render locals: {
      search_results: OrderByHouseSearch.new(params[:house])
    }
    # house = params[:house]
    #
    
  end

end
