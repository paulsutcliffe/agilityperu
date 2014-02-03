require 'spec_helper'

describe "auspiciadores/edit" do
  before(:each) do
    @auspiciador = assign(:auspiciador, stub_model(Auspiciador,
      :imagen => "MyString",
      :nombre => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit auspiciador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", auspiciador_path(@auspiciador), "post" do
      assert_select "input#auspiciador_imagen[name=?]", "auspiciador[imagen]"
      assert_select "input#auspiciador_nombre[name=?]", "auspiciador[nombre]"
      assert_select "textarea#auspiciador_descripcion[name=?]", "auspiciador[descripcion]"
    end
  end
end
