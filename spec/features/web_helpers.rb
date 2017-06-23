def sign_in_and_play
  visit('/')
  fill_in('Player_1', with: 'Lily')
  fill_in('Player_2', with: 'Dexter')
  click_button('Submit')
end

def attack_player1
  click_button('Attack Lily')
  click_button('Keep playing')
end
