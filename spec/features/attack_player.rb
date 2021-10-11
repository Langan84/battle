feature 'Attacking' do 
  scenario 'Reducing player2 HP by 10HP' do 
    sign_in_and_play

    click_button 'Attack'
    click_link 'OK'
    save_and_open_page
    expect(page).not_to have_content 'Jill 100HP'
    expect(page).to have_content 'Jill 90HP'
  end
end




