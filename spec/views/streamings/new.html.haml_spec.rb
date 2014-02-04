require 'spec_helper'

describe "streamings/new" do
  before(:each) do
    assign(:streaming, stub_model(Streaming,
      :codigo_embed => "MyString"
    ).as_new_record)
  end

  it "renders new streaming form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", streamings_path, "post" do
      assert_select "input#streaming_codigo_embed[name=?]", "streaming[codigo_embed]"
    end
  end
end
