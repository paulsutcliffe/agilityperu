require 'spec_helper'

describe "mensajes/new" do
  before(:each) do
    assign(:mensaje, stub_model(Mensaje,
      :nombre => "MyString",
      :email => "MyString",
      :telefono => "MyString",
      :mensaje => "MyText"
    ).as_new_record)
  end

  it "renders new mensaje form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mensajes_path, "post" do
      assert_select "input#mensaje_nombre[name=?]", "mensaje[nombre]"
      assert_select "input#mensaje_email[name=?]", "mensaje[email]"
      assert_select "input#mensaje_telefono[name=?]", "mensaje[telefono]"
      assert_select "textarea#mensaje_mensaje[name=?]", "mensaje[mensaje]"
    end
  end
end
