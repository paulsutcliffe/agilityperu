require 'spec_helper'

describe "visas/edit" do
  before(:each) do
    @visa = assign(:visa, stub_model(Visa,
      :titulo => "MyString",
      :imagen => "MyString"
    ))
  end

  it "renders the edit visa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visa_path(@visa), "post" do
      assert_select "input#visa_titulo[name=?]", "visa[titulo]"
      assert_select "input#visa_imagen[name=?]", "visa[imagen]"
    end
  end
end
