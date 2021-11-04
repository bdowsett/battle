feature 'Attack' do
    scenario 'attack Player 2' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content 'Charlotte attacked Mittens'
    end 
  end 

feature 'Attacking' do 
  scenario 'attacking reduces health' do 
    sign_in_and_play
    click_link('Attack')
    expect(page).to have_content 'Mittens: 50hp'
  end 
end