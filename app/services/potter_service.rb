# class PotterService
#   def members_by_house(house)
#     conn = Faraday.new(url: "https://www.potterapi.com/v1/") do |faraday|
#       faraday.params = {key: ENV['HARRY_POTTER_KEY'],
#                         house: @house,
#                         orderOfThePhoenix: true}
#       faraday.adapter Faraday.default_adapter
#     end
#
#     response = conn.get("characters")
#
#     require "pry"; binding.pry
#     member_data = JSON.parse(response.body, symbolize_names: true)
#
#     # @members = member_data.map do |member|
#     #   Character.new(member)
#     # end
#   end
# end
