require 'rails_helper'

describe PotterService do
  context "instance methods" do
    context "#members_by_house" do
      xit "returns the member data" do
        search = subject.members_by_house("Gryffindor")
        expect(search).to be_a Hash
        expect(search[:results]).to be_an Array
        expect(search[:results].count).to eq 21
        member = search[:results].first

        expect(member).to have_key :name
        expect(member).to have_key :house
      end
    end
  end
end
