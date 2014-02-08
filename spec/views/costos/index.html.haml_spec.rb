require 'spec_helper'

describe "costos/index" do
  before(:each) do
    assign(:costos, [
      stub_model(Costo,
        :titulo => "Titulo",
        :contenido => "MyText"
      ),
      stub_model(Costo,
        :titulo => "Titulo",
        :contenido => "MyText"
      )
    ])
  end

  it "renders a list of costos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
