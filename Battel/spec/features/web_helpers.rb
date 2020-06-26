def sign_in_and_play
    visit('/')
  fill_in :player_1_name, with: 'Rabee'
  fill_in :player_2_name, with: 'Josh'
  click_button 'Submit'
end
