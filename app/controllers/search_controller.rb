class SearchController < ApplicationController

  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.params = {key: ENV['HARRY_POTTER_KEY'],
                        house: "#{house}",
                        orderOfThePhoenix: true}
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("characters")

    @members = JSON.parse(response.body, symbolize_names: true)



  end

end
