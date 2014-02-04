require 'spec_helper'

describe "streamings/edit" do
  before(:each) do
    @streaming = assign(:streaming, stub_model(Streaming,
      :codigo_embed => "MyString"
    ))
  end

  it "renders the edit streaming form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", streaming_path(@streaming), "post" do
      assert_select "input#streaming_codigo_embed[name=?]", "streaming[codigo_embed]"
    end
  end
end
