require "birthday"
require './spec/features/web_helpers.rb'

feature "index page" do

  before(:each) { Timecop.freeze(Time.local(2018, 4, 8)) }


  scenario "days until birthday should be shown" do
    enter_birthday
    expect(page).to have_content('2 days until your birthday')
  end

end
