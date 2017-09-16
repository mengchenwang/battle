feature 'hit points' do
  scenario 'player_2_hitpoint' do
    sign_in_and_play
    expect(page).to have_content 'Superman: 60HP'
  end
end
