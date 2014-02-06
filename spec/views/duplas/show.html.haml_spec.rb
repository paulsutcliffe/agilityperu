require 'spec_helper'

describe "duplas/show" do
  before(:each) do
    @dupla = assign(:dupla, stub_model(Dupla,
      :nombre => "Nombre",
      :pais => "Pais",
      :registro_genealogico => "Registro Genealogico",
      :raza => "Raza",
      :color => "Color",
      :sexo => "Sexo",
      :categoria => "Categoria",
      :grado => "Grado",
      :tatuaje_microchip => "Tatuaje Microchip",
      :prueba => "Prueba",
      :fotografia => "Fotografia"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Nombre/)
    expect(rendered).to match(/Pais/)
    expect(rendered).to match(/Registro Genealogico/)
    expect(rendered).to match(/Raza/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Sexo/)
    expect(rendered).to match(/Categoria/)
    expect(rendered).to match(/Grado/)
    expect(rendered).to match(/Tatuaje Microchip/)
    expect(rendered).to match(/Prueba/)
    expect(rendered).to match(/Fotografia/)
  end
end
