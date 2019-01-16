require 'rails_helper'

RSpec.describe Article, type: :model do

  describe '#validations' do

    it 'should test that the factory is valid' do
      expect(build :article).to be_valid
    end
    
    it 'should validate the presence of the title' do
      article = build :article, title: ''
      expect(article).not_to be_valid
      expect(article.errors.messages[:title]).to include("can't be blank")
    end

  end

end
