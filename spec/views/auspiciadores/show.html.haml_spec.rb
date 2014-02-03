require 'spec_helper'

describe "auspiciadores/show" do
  before(:each) do
    @auspiciador = assign(:auspiciador, stub_model(Auspiciador,
      :imagen => "Imagen",
      :nombre => "Nombre",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Imagen/)
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/MyText/)
  end
end
