feature 'Entering 2 names' do
  scenario 'submitting 2 names' do
    visit('/')
    fill_in 'Name1', with: 'Charlotte'
    fill_in 'Name2', with: 'Mittens'
    click_button 'submit_names'

    save_and_open_page

    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end