require 'spec_helper'

describe "hoteles/index" do
  before(:each) do
    assign(:hoteles, [
      stub_model(Hotel,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :email => "Email",
        :website => "Website"
      ),
      stub_model(Hotel,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :email => "Email",
        :website => "Website"
      )
    ])
  end

  it "renders a list of hoteles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
