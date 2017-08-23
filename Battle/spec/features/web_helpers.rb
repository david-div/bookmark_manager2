def sign_in_and_play
  visit('/')
  fill_in('player1', :with => 'Alessio')
  fill_in('player2', :with => 'Olivia')
  click_button('Submit')
end

