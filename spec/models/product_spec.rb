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

     it 'should not save when name is nil' do
      @product = Product.new(
        name:nil,
        price_cents: 9999,
        quantity: 99,
        category: @category)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
   end

        it 'should not save when price_cents is nil' do
        @product = Product.new(
          name:'Peach',
          price_cents: nil,
          quantity: 99,
          category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages).to include("Price is not a number")
     end

     it 'should not save when quantity is nil' do
      @product = Product.new(
        name:'Peach',
        price_cents: 9999,
        quantity: nil,
        category: @category)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
   end

        it 'should not save when category is nil' do
      @product = Product.new(
        name:'Peach',
        price_cents: 9999,
        quantity: 99,
        category: nil)
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
   end

  end

end

