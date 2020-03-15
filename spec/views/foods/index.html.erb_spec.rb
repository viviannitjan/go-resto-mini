require 'rails_helper'

RSpec.describe "foods/index", type: :view do
  before(:each) do
    assign(:foods, [
      Food.create!(
        {
          name: :nasigoreng,
          description: :goreng,
          price: 200.0
        }
      ),
      Food.create!(
        {
          name: :nasigoreng,
          description: :goreng,
          price: 200.0
        }
      )
    ])
  end

  it "renders a list of foods" do
    render
  end
end
