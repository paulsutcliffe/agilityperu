require 'spec_helper'

describe "organizadores/edit" do
  before(:each) do
    @organizador = assign(:organizador, stub_model(Organizador,
      :titulo => "MyString",
      :contenido => "MyText"
    ))
  end

  it "renders the edit organizador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", organizador_path(@organizador), "post" do
      assert_select "input#organizador_titulo[name=?]", "organizador[titulo]"
      assert_select "textarea#organizador_contenido[name=?]", "organizador[contenido]"
    end
  end
end
