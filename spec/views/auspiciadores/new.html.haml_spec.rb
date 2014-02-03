require 'spec_helper'

describe "auspiciadores/new" do
  before(:each) do
    assign(:auspiciador, stub_model(Auspiciador,
      :imagen => "MyString",
      :nombre => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new auspiciador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", auspiciadores_path, "post" do
      assert_select "input#auspiciador_imagen[name=?]", "auspiciador[imagen]"
      assert_select "input#auspiciador_nombre[name=?]", "auspiciador[nombre]"
      assert_select "textarea#auspiciador_descripcion[name=?]", "auspiciador[descripcion]"
    end
  end
end
