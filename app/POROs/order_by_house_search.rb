class OrderByHouseSearch

  def initialize(house_attribute)
    @house = house_attribute
  end

  def member_count
    members.count
  end

  def members
    # service = PotterService.new
    # service.members_by_house(house).map do |member_data|
    #   Character.new(member_data)
    # end
    conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
      faraday.params = {key: ENV['HARRY_POTTER_KEY'],
                        house: @house,
                        orderOfThePhoenix: true}
      faraday.adapter Faraday.default_adapter
    end

    response = conn.get("characters")

    member_data = JSON.parse(response.body, symbolize_names: true)

    @members = member_data.map do |member|
      Character.new(member)
    end
  end

end
