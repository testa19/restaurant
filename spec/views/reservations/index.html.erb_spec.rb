require 'rails_helper'

RSpec.describe "reservations/index", type: :view do
  before(:each) do
    assign(:reservations, [
      Reservation.create!(
        :customer => "Customer",
        :info => "MyText",
        :restaurant => nil,
        :table => nil
      ),
      Reservation.create!(
        :customer => "Customer",
        :info => "MyText",
        :restaurant => nil,
        :table => nil
      )
    ])
  end

  it "renders a list of reservations" do
    render
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
