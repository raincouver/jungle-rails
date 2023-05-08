require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here
     before do
      @category = Category.create(name: 'Plant')
     end

     it 'should save sucessfully with all four columns' do
        @product = Product.new(
          name:'Peach',
          price_cents: 9999,
          quantity: 99,
          category: @category)
        expect(@product).to be_valid
     end
  end

end

