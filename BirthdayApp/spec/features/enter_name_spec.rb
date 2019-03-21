
feature 'Enter name and birthday' do
  scenario 'submitting name and birthday' do
    visit('/')
    fill_in :name, with: 'Lauren'
    fill_in :birthday, with: '25/10/1996'
    click_button 'Let the countdown begin!'
    expect(page).to have_content 'Lauren, born on 25/10/1996'
  end
end
