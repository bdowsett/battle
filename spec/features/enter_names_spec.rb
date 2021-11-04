feature 'Enter names' do
    scenario 'submitting names' do
      visit('/')
      sign_in_and_play
      
      save_and_open_page 
      
      expect(page).to have_content 'Charlotte vs. Mittens'
    end
  end
  
  feature 'View hit Points' do 
     scenario 'see player 2 hit points' do 
      visit('/')
      sign_in_and_play
      expect(page).to have_content 'Mittens: 60hp'
     end 
  end 