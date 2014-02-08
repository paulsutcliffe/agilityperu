require 'spec_helper'

describe "reglamentos/index" do
  before(:each) do
    assign(:reglamentos, [
      stub_model(Reglamento,
        :titulo => "Titulo",
        :contenido => "MyText"
      ),
      stub_model(Reglamento,
        :titulo => "Titulo",
        :contenido => "MyText"
      )
    ])
  end

  it "renders a list of reglamentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
