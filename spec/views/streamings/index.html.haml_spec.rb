require 'spec_helper'

describe "streamings/index" do
  before(:each) do
    assign(:streamings, [
      stub_model(Streaming,
        :codigo_embed => "Codigo Embed"
      ),
      stub_model(Streaming,
        :codigo_embed => "Codigo Embed"
      )
    ])
  end

  it "renders a list of streamings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo Embed".to_s, :count => 2
  end
end
