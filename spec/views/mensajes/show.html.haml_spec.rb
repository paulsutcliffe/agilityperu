require 'spec_helper'

describe "mensajes/show" do
  before(:each) do
    @mensaje = assign(:mensaje, stub_model(Mensaje,
      :nombre => "Nombre",
      :email => "Email",
      :telefono => "Telefono",
      :mensaje => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Telefono/)
    expect(rendered).to match(/MyText/)
  end
end
