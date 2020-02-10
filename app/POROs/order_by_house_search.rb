class OrderByHouseSearch

  def initialize(house_attribute)
    @house = house_attribute
  end

  def member_count
    members.count
  end

  def members
    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.params = {key: ENV['HARRY_POTTER_KEY'],
                        house: @house,
                        orderOfThePhoenix: true}
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("characters")

    json = JSON.parse(response.body, symbolize_names: true)

    @members = json.map do |member|
      Character.new(member)
    end
  end

end
