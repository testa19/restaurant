require 'rails_helper'

RSpec.describe "reservations/show", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :customer => "Customer",
      :info => "MyText",
      :restaurant => nil,
      :table => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Customer/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
