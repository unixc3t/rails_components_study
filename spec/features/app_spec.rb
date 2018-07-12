# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'the app', type: :feature do
  it 'hooks up to /' do
    visit '/'
    within 'h1' do
      expect(page).to have_content 'Sportsball'
    end
  end

  it 'has teams' do
    visit '/'
    click_link 'Teams'
    within 'h1' do
      expect(page).to have_content 'Teams'
    end
  end

  it 'has games' do
    visit '/'
    click_link 'Games'
    within 'h1' do
      expect(page).to have_content 'Games'
    end
  end

  it 'can predict' do
    AppComponent::Team.create! name: 'UofL'
    AppComponent::Team.create! name: 'UK'

    visit '/'
    click_link 'Predict an outcome'
    click_button 'What is it going to be'
  end
end
