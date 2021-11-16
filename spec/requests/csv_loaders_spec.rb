require 'rails_helper'

RSpec.describe "CsvLoaders", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/csv_loaders/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/csv_loaders/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/csv_loaders/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/csv_loaders/create"
      expect(response).to have_http_status(:success)
    end
  end

end
