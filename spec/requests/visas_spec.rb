require 'spec_helper'

describe "Visas" do
  describe "GET /visas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get visas_path
      expect(response.status).to be(200)
    end
  end
end
