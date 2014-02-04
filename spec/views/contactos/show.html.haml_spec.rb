require 'spec_helper'

describe "contactos/show" do
  before(:each) do
    @contacto = assign(:contacto, stub_model(Contacto,
      :titulo => "Titulo",
      :contenido => "MyText",
      :email => "Email",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Website/)
  end
end
