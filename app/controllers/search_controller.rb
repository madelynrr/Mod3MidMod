class SearchController < ApplicationController

  def index
    house = params[:house]

    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.params = {key: "$2a$10$KRdHUDF24DWSKgeUDE/Pk.Io8huQ2pblRm2Sl956HH9Sjf1pdwCEW",
                        house: "#{house}",
                        orderOfThePhoenix: true}
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("characters")

    @members = JSON.parse(response.body, symbolize_names: true)



  end

end
