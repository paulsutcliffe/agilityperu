require 'spec_helper'

describe "organizadores/new" do
  before(:each) do
    assign(:organizador, stub_model(Organizador,
      :titulo => "MyString",
      :contenido => "MyText"
    ).as_new_record)
  end

  it "renders new organizador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organizadores_path, "post" do
      assert_select "input#organizador_titulo[name=?]", "organizador[titulo]"
      assert_select "textarea#organizador_contenido[name=?]", "organizador[contenido]"
    end
  end
end
