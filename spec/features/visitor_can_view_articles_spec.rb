require 'rails_helper'


feature 'Visitor can view articles' do

	before do
		visit root_path
	end

	describe 'visitor can see articles' do
		it 'Visitor can see first title'do
			expect(page).to have_content 'Corona virus officially wiped out'
		end

		it 'visitor can see second title' do
			expect(page).to have_content 'The economy is booming'
		end
	end
end
