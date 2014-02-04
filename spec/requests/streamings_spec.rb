require 'spec_helper'

describe "Streamings" do
  describe "GET /streamings" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get streamings_path
      expect(response.status).to be(200)
    end
  end
end
