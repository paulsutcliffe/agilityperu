require 'spec_helper'

describe "guias/show" do
  before(:each) do
    @guia = assign(:guia, stub_model(Guia,
      :nombre => "Nombre",
      :apellido => "Apellido",
      :direccion => "Direccion",
      :telefeno => "Telefeno",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Apellido/)
    expect(rendered).to match(/Direccion/)
    expect(rendered).to match(/Telefeno/)
    expect(rendered).to match(/Email/)
  end
end
