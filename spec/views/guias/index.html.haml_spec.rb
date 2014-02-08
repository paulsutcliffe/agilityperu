require 'spec_helper'

describe "guias/index" do
  before(:each) do
    assign(:guias, [
      stub_model(Guia,
        :nombre => "Nombre",
        :apellido => "Apellido",
        :direccion => "Direccion",
        :telefeno => "Telefeno",
        :email => "Email"
      ),
      stub_model(Guia,
        :nombre => "Nombre",
        :apellido => "Apellido",
        :direccion => "Direccion",
        :telefeno => "Telefeno",
        :email => "Email"
      )
    ])
  end

  it "renders a list of guias" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Apellido".to_s, :count => 2
    assert_select "tr>td", :text => "Direccion".to_s, :count => 2
    assert_select "tr>td", :text => "Telefeno".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
