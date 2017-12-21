require 'rails_helper'

RSpec.describe "tables/index", type: :view do
  before(:each) do
    assign(:tables, [
      Table.create!(
        :seats => 2,
        :description => "Description",
        :restaurant => nil
      ),
      Table.create!(
        :seats => 2,
        :description => "Description",
        :restaurant => nil
      )
    ])
  end

  it "renders a list of tables" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
