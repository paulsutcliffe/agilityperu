require 'spec_helper'

describe "contactos/new" do
  before(:each) do
    assign(:contacto, stub_model(Contacto,
      :titulo => "MyString",
      :contenido => "MyText",
      :email => "MyString",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new contacto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contactos_path, "post" do
      assert_select "input#contacto_titulo[name=?]", "contacto[titulo]"
      assert_select "textarea#contacto_contenido[name=?]", "contacto[contenido]"
      assert_select "input#contacto_email[name=?]", "contacto[email]"
      assert_select "input#contacto_website[name=?]", "contacto[website]"
    end
  end
end
