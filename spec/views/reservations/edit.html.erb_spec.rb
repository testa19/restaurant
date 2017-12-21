require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :customer => "MyString",
      :info => "MyText",
      :restaurant => nil,
      :table => nil
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input[name=?]", "reservation[customer]"

      assert_select "textarea[name=?]", "reservation[info]"

      assert_select "input[name=?]", "reservation[restaurant_id]"

      assert_select "input[name=?]", "reservation[table_id]"
    end
  end
end
