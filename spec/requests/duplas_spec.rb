require 'spec_helper'

describe "Duplas" do
  describe "GET /duplas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get duplas_path
      expect(response.status).to be(200)
    end
  end
end
