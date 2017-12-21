require 'rails_helper'

RSpec.describe "tables/new", type: :view do
  before(:each) do
    assign(:table, Table.new(
      :seats => 1,
      :description => "MyString",
      :restaurant => nil
    ))
  end

  it "renders new table form" do
    render

    assert_select "form[action=?][method=?]", tables_path, "post" do

      assert_select "input[name=?]", "table[seats]"

      assert_select "input[name=?]", "table[description]"

      assert_select "input[name=?]", "table[restaurant_id]"
    end
  end
end
