require 'spec_helper'

describe "jueces/new" do
  before(:each) do
    assign(:juez, stub_model(Juez,
      :foto => "MyString",
      :nombre => "MyString",
      :descripcion => "MyText"
    ).as_new_record)
  end

  it "renders new juez form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", jueces_path, "post" do
      assert_select "input#juez_foto[name=?]", "juez[foto]"
      assert_select "input#juez_nombre[name=?]", "juez[nombre]"
      assert_select "textarea#juez_descripcion[name=?]", "juez[descripcion]"
    end
  end
end
