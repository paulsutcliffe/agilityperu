require 'spec_helper'

describe "slides/index" do
  before(:each) do
    assign(:slides, [
      stub_model(Slide,
        :imagen => "Imagen",
        :titulo => "Titulo"
      ),
      stub_model(Slide,
        :imagen => "Imagen",
        :titulo => "Titulo"
      )
    ])
  end

  it "renders a list of slides" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Imagen".to_s, :count => 2
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
  end
end
