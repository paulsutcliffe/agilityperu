require 'spec_helper'

describe "mensajes/index" do
  before(:each) do
    assign(:mensajes, [
      stub_model(Mensaje,
        :nombre => "Nombre",
        :email => "Email",
        :telefono => "Telefono",
        :mensaje => "MyText"
      ),
      stub_model(Mensaje,
        :nombre => "Nombre",
        :email => "Email",
        :telefono => "Telefono",
        :mensaje => "MyText"
      )
    ])
  end

  it "renders a list of mensajes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Telefono".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
