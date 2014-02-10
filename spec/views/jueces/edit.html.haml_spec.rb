require 'spec_helper'

describe "jueces/edit" do
  before(:each) do
    @juez = assign(:juez, stub_model(Juez,
      :foto => "MyString",
      :nombre => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit juez form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", juez_path(@juez), "post" do
      assert_select "input#juez_foto[name=?]", "juez[foto]"
      assert_select "input#juez_nombre[name=?]", "juez[nombre]"
      assert_select "textarea#juez_descripcion[name=?]", "juez[descripcion]"
    end
  end
end
