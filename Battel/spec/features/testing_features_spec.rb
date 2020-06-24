xfeature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end

feature 'Enter Names' do
  before do
    visit('/')
    fill_in "Name 1", :with => "Player 1"
    fill_in "Name 2", :with => "Player 2"
    click_button "Start Game"
  end
  scenario 'Player 1 can enter name' do
    expect(page).to have_text("Player 1")
  end
  scenario 'Player 2 can enter name' do
    expect(page).to have_text("Player 2")
  end
end
