require 'spec_helper'

describe "duplas/index" do
  before(:each) do
    assign(:duplas, [
      stub_model(Dupla,
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
      ),
      stub_model(Dupla,
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
      )
    ])
  end

  it "renders a list of duplas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    assert_select "tr>td", :text => "Registro Genealogico".to_s, :count => 2
    assert_select "tr>td", :text => "Raza".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "Categoria".to_s, :count => 2
    assert_select "tr>td", :text => "Grado".to_s, :count => 2
    assert_select "tr>td", :text => "Tatuaje Microchip".to_s, :count => 2
    assert_select "tr>td", :text => "Prueba".to_s, :count => 2
    assert_select "tr>td", :text => "Fotografia".to_s, :count => 2
  end
end
