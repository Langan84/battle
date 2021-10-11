feature 'View hit points' do 
  scenario 'See player 2 hit points' do 
    sign_in_and_play

    save_and_open_page

    expect(page).to have_content 'Jill: 100HP'
  end
end