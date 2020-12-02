require 'rails_helper'

RSpec.describe "Complementos", type: :request do
  describe "GET /complementos" do
    it "works! (now write some real specs)" do
      get complementos_path
      expect(response).to have_http_status(200)
    end
  end
end
