require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    describe 'Get /index' do
        it 'render a successful response' do
            expect do
            post = FactoryBot.create(:post)

            get posts_path

            expect(response).to be_successfull
            end
        end
    end

    describe "/posts/create" do
        it "successfully creates a new post" do
            expect do
                post = FactoryBot.create(:post)
                post.save
            end.to change(Post, :count).by(1)
        end
    end

    describe "post/update" do
        it "successful updates the requested post" do
            expect do
                post = FactoryBot.create(:post)
                patch post_url(post)
                post.reload
                expect(response).to be_successfull
            end
        end
    end

    describe "Delete /destroy" do
        it "successfully deletes a post" do
            post = FactoryBot.create(:post)
            post.save
            expect do
                post.destroy
            end.to change(Post, :count).by(-1)
        end
    end

    describe "delete /destroy" do
        it "redirect to Post lists" do
            post = FactoryBot.create(:post)
            post.save
            post.destroy
            expect(response).to be_successful
        end
    end

    describe "Get /show" do
        it "render successful response" do
            expect do
                post = FactoryBot.create(:post)
                get post_url(post)
                expect(response).to be_successfull
            end
        end
    end
end
