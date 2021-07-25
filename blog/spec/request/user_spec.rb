require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe '/users/signup' do
    it 'succeds' do
      get new_user_registration_path
      expect(response).to be_successful
    end
  end
  describe '/users/signup' do
    it 'succeds' do
      get new_user_session_path
      expect(response).to be_successful
    end
  end
end
