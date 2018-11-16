require "birthday"
require 'timecop'

describe Birthday do
  context "when your birthday is 10/4/1990 and today's date is 8/4/2018" do

    let(:my_bday) { Birthday.new("1990-04-10") }

    before(:each) { Timecop.freeze(Time.local(2018, 4, 8)) }

    it "days until birthday should equal 2" do
      expect(my_bday.days_until_birthday).to eq 2
    end

  end
end
