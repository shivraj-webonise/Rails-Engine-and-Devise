require 'rails_helper'

RSpec.describe Post, type: :model do
    it 'has a title' do
        post = FactoryBot.create(:post)
        expect(post).to be_valid
        post.title = "b"
        expect(post).to_not be_invalid
    end

    it 'has a body' do
        post = FactoryBot.create(:post)
        expect(post).to be_valid
    end

    it 'has a author' do
        post = FactoryBot.create(:post)
        expect(post).to be_valid
    end

    it 'has a content' do
        post = FactoryBot.create(:post)
        expect(post).to be_valid
    end
end


