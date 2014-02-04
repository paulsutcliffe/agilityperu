require 'spec_helper'

describe "transportes/index" do
  before(:each) do
    assign(:transportes, [
      stub_model(Transporte,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :email => "Email",
        :website => "Website"
      ),
      stub_model(Transporte,
        :nombre => "Nombre",
        :descripcion => "MyText",
        :email => "Email",
        :website => "Website"
      )
    ])
  end

  it "renders a list of transportes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
