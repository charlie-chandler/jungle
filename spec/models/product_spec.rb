require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'should save with name, price, quantity and category' do
    flowers = Category.new(name: 'Flowers')
    @product = Product.new(name: 'Lillies', price: '45', quantity: '5', category: flowers)
    expect(@product.save).to be true
  end

  it 'should save with the name "Daisies" when given that name' do
    flowers = Category.new(name: 'Flowers')
    @product = Product.new(name: 'Daisies', price: '25', quantity: '15', category: flowers)
    expect(@product.name).to eq('Daisies')
  end

  it 'should save with the price of "20" when given that price' do
    flowers = Category.new(name: 'Flowers')
    @product = Product.new(name: 'Tulips', price: '20', quantity: '5', category: flowers)
    expect(@product.price.to_f).to eq(20)
  end

  it 'should save with the quantity of "5" when given that quantity' do
    flowers = Category.new(name: 'Flowers')
    @product = Product.new(name: 'Peonies', price: '50', quantity: '5', category: flowers)
    expect(@product.quantity).to eq(5)
  end

  it 'should save with the category of "Flowers" when given that category' do
    flowers = Category.new(name: 'Flowers')
    @product = Product.new(name: 'Carnations', price: '10', quantity: '8', category: flowers)
    expect(@product.category).to eq(flowers)
  end

  it 'should throw an error' do
    flowers = Category.new(name: 'Flowers')
    @product = Product.new(name: nil , price: '10', quantity: '8', category: flowers)
    expect(@product.errors.full_messages_for(:name))
    end

end
