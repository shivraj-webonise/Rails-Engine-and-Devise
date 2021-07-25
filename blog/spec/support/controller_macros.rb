module ControllerMacros
  FactoryBot.define do
    factory :user do
      id { 199 }
      email { 'shivrajsaya@gmail.com' }
      password { 'password123' }
    end
  end

  FactoryBot.define do
    factory :post do
      id { 28 }
      title { 'BLockchain' }
      author { 'jeff musk' }
      image_url { 'https://s3.amazonaws.com/media.al-fanarmedia.org/wp-content/uploads/2021/01/26160334/source-Hoyes1.jpg' }
      published { false }
      content { 'Hiii blokchain' }
      user { FactoryBot.create(:user) }
    end
  end
end
