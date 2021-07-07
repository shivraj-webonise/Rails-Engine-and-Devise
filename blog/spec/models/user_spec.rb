require 'rails_helper'


RSpec.describe User, type: :model do
    it 'has a email' do
        user = FactoryBot.create(:user)
        expect(user).to be_valid
        user.email = ""
        expect(user).to be_invalid
    end
    
    it 'has a password of minimum length 8' do
        user = FactoryBot.create(:user)
        expect(user).to be_valid
        user.password = "abc"
        expect(user).to be_invalid
    end
end
