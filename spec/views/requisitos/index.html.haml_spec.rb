require 'spec_helper'

describe "requisitos/index" do
  before(:each) do
    assign(:requisitos, [
      stub_model(Requisito,
        :pais => "Pais",
        :contenido => "MyText"
      ),
      stub_model(Requisito,
        :pais => "Pais",
        :contenido => "MyText"
      )
    ])
  end

  it "renders a list of requisitos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
