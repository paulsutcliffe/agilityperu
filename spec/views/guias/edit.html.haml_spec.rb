require 'spec_helper'

describe "guias/edit" do
  before(:each) do
    @guia = assign(:guia, stub_model(Guia,
      :nombre => "MyString",
      :apellido => "MyString",
      :direccion => "MyString",
      :telefeno => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit guia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", guia_path(@guia), "post" do
      assert_select "input#guia_nombre[name=?]", "guia[nombre]"
      assert_select "input#guia_apellido[name=?]", "guia[apellido]"
      assert_select "input#guia_direccion[name=?]", "guia[direccion]"
      assert_select "input#guia_telefeno[name=?]", "guia[telefeno]"
      assert_select "input#guia_email[name=?]", "guia[email]"
    end
  end
end
