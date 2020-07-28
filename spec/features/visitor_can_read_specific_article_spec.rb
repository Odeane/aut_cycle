require 'rails_helper'

feature 'Visitor can read specific articles' do
  before do
    create(:article, title: 'Good Life', content: 'Living large')
    visit root_path
    click_on 'Good Life'
  end

  describe ' Visitor can see content of the article' do
    it 'expect to see article title' do
      expect(page).to have_content 'Good Life'
    end

    it 'expect to see article content' do
      expect(page).to have_content 'Living large'
    end
  end
end
