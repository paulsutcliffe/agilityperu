require 'spec_helper'

describe "mensajes/edit" do
  before(:each) do
    @mensaje = assign(:mensaje, stub_model(Mensaje,
      :nombre => "MyString",
      :email => "MyString",
      :telefono => "MyString",
      :mensaje => "MyText"
    ))
  end

  it "renders the edit mensaje form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", mensaje_path(@mensaje), "post" do
      assert_select "input#mensaje_nombre[name=?]", "mensaje[nombre]"
      assert_select "input#mensaje_email[name=?]", "mensaje[email]"
      assert_select "input#mensaje_telefono[name=?]", "mensaje[telefono]"
      assert_select "textarea#mensaje_mensaje[name=?]", "mensaje[mensaje]"
    end
  end
end
