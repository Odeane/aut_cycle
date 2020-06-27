require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'db' do 
    it { is_expected.to have_db_column :title}
  end

  describe 'validation' do
    it {is_expected.to validate_presence_of :title}
  end

describe 'Factory' do
  it 'should have a valid Factory' do
    expect(create(:article)).to be_valid
  end
end
end