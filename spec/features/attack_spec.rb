#spec/features/attack_spec.rb

feature 'attack Player 2' do
  scenario 'attack Player 2 and get a confirmation' do
    sign_in_and_play
    click_button('Attack Dexter')
    expect(page).to have_content('attacked')
  end
end

feature 'decrease Player 2 hp' do
  scenario 'hp reduced by 10' do
    sign_in_and_play
    click_button('Attack Dexter')
    click_button('Keep playing')
    expect(page).to have_content "Dexter 90/100HP"
  end
end

feature 'decrease Player 1 hp' do
  scenario 'hp reduced by 10' do
    sign_in_and_play
    click_button('Attack Lily')
    click_button('Keep playing')
    expect(page).to have_content "Lily 90/100HP"
  end
end
