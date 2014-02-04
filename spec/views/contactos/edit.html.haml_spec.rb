require 'spec_helper'

describe "contactos/edit" do
  before(:each) do
    @contacto = assign(:contacto, stub_model(Contacto,
      :titulo => "MyString",
      :contenido => "MyText",
      :email => "MyString",
      :website => "MyString"
    ))
  end

  it "renders the edit contacto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contacto_path(@contacto), "post" do
      assert_select "input#contacto_titulo[name=?]", "contacto[titulo]"
      assert_select "textarea#contacto_contenido[name=?]", "contacto[contenido]"
      assert_select "input#contacto_email[name=?]", "contacto[email]"
      assert_select "input#contacto_website[name=?]", "contacto[website]"
    end
  end
end
