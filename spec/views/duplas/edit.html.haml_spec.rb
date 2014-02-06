require 'spec_helper'

describe "duplas/edit" do
  before(:each) do
    @dupla = assign(:dupla, stub_model(Dupla,
      :nombre => "MyString",
      :pais => "MyString",
      :registro_genealogico => "MyString",
      :raza => "MyString",
      :color => "MyString",
      :sexo => "MyString",
      :categoria => "MyString",
      :grado => "MyString",
      :tatuaje_microchip => "MyString",
      :prueba => "MyString",
      :fotografia => "MyString"
    ))
  end

  it "renders the edit dupla form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", dupla_path(@dupla), "post" do
      assert_select "input#dupla_nombre[name=?]", "dupla[nombre]"
      assert_select "input#dupla_pais[name=?]", "dupla[pais]"
      assert_select "input#dupla_registro_genealogico[name=?]", "dupla[registro_genealogico]"
      assert_select "input#dupla_raza[name=?]", "dupla[raza]"
      assert_select "input#dupla_color[name=?]", "dupla[color]"
      assert_select "input#dupla_sexo[name=?]", "dupla[sexo]"
      assert_select "input#dupla_categoria[name=?]", "dupla[categoria]"
      assert_select "input#dupla_grado[name=?]", "dupla[grado]"
      assert_select "input#dupla_tatuaje_microchip[name=?]", "dupla[tatuaje_microchip]"
      assert_select "input#dupla_prueba[name=?]", "dupla[prueba]"
      assert_select "input#dupla_fotografia[name=?]", "dupla[fotografia]"
    end
  end
end
