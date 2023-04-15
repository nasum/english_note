require 'rails_helper'

RSpec.describe "Words", type: :request do
  describe "GET /index" do
    it "returns http success" do
      skip
      get "/words/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      skip
      get "/words/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      skip
      get "/words/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      skip
      get "/words/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      skip
      get "/words/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
