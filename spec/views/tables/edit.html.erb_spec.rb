require 'rails_helper'

RSpec.describe "tables/edit", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :seats => 1,
      :description => "MyString",
      :restaurant => nil
    ))
  end

  it "renders the edit table form" do
    render

    assert_select "form[action=?][method=?]", table_path(@table), "post" do

      assert_select "input[name=?]", "table[seats]"

      assert_select "input[name=?]", "table[description]"

      assert_select "input[name=?]", "table[restaurant_id]"
    end
  end
end
