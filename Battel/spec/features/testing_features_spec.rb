xfeature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Enter Names' do
  scenario 'submitting names' do
    sign_in_and_play
  expect(page).to have_content 'Rabee vs. Josh'
  end
end

  feature 'hitting points' do
    scenario 'want to see Player2 hit points' do
    sign_in_and_play
      expect(page).to have_content("100 HP")
    end
  end

   feature 'displays attack button and confirms attack' do
     before do
       sign_in_and_play
     end
     scenario 'shows attack button' do
       expect(page).to have_button('attack')
     end
     scenario 'confirms attack on player 2' do
       find_button('attack').click
       expect(page).to have_content('Rabee attacked Josh')
   end
end
