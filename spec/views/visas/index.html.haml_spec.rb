require 'spec_helper'

describe "visas/index" do
  before(:each) do
    assign(:visas, [
      stub_model(Visa,
        :titulo => "Titulo",
        :imagen => "Imagen"
      ),
      stub_model(Visa,
        :titulo => "Titulo",
        :imagen => "Imagen"
      )
    ])
  end

  it "renders a list of visas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "Imagen".to_s, :count => 2
  end
end
