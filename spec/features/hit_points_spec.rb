# spec/features/hit_points_spec.rb

feature 'Viewing hp' do
  scenario 'see player 2 hp' do
    sign_in_and_play
    expect(page).to have_content('Dexter')
    expect(page).to have_content('100HP')
  end
end
