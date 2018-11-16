def enter_birthday
  visit('/')
  fill_in('bday', with: '10/04/2018')
  click_button('Submit')
end
