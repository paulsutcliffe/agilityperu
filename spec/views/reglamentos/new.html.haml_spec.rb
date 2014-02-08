require 'spec_helper'

describe "reglamentos/new" do
  before(:each) do
    assign(:reglamento, stub_model(Reglamento,
      :titulo => "MyString",
      :contenido => "MyText"
    ).as_new_record)
  end

  it "renders new reglamento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", reglamentos_path, "post" do
      assert_select "input#reglamento_titulo[name=?]", "reglamento[titulo]"
      assert_select "textarea#reglamento_contenido[name=?]", "reglamento[contenido]"
    end
  end
end
