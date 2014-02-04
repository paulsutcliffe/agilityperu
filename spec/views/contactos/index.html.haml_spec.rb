require 'spec_helper'

describe "contactos/index" do
  before(:each) do
    assign(:contactos, [
      stub_model(Contacto,
        :titulo => "Titulo",
        :contenido => "MyText",
        :email => "Email",
        :website => "Website"
      ),
      stub_model(Contacto,
        :titulo => "Titulo",
        :contenido => "MyText",
        :email => "Email",
        :website => "Website"
      )
    ])
  end

  it "renders a list of contactos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
