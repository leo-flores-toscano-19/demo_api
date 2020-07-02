require 'rails_helper'

#RSpec.describe "Users", type: :request do
RSpec.describe UsersController do 
  describe "GET #index" do
    before do
      get :index
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
