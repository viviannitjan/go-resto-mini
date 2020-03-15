require 'rails_helper'

RSpec.describe "foods/show", type: :view do
  before(:each) do
    @food = assign(:food, Food.create!(
      {
        name: :nasigoreng,
        description: :goreng,
        price: 200.0
      }
    ))
  end

  it "renders attributes in <p>" do
    render
  end
end
