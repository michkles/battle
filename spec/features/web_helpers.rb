def sign_in_and_play
  visit '/'
  fill_in :player1, with: 'Tom'
  fill_in :player2, with: 'Brian'
  click_button 'Start Battle'
end  
