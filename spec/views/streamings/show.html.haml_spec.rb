require 'spec_helper'

describe "streamings/show" do
  before(:each) do
    @streaming = assign(:streaming, stub_model(Streaming,
      :codigo_embed => "Codigo Embed"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Codigo Embed/)
  end
end
