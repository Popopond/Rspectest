Sandwich = Struct.new(:taste, :toppings)

describe 'Sandwich' do 
    let(:sandwich){Sandwich.new('delicious',[])}
    # def sandwich 
    #     @sandwich ||= Sandwich.new('delicious', [])
    # end

    it 'is delicious' do
        taste =sandwich.taste
        expect(taste).to eq('delicious')
    end
    it 'has toppings' do
        sandwich.toppings << 'cheese'
        toppings = sandwich.toppings
        expect(toppings).not_to be_empty 
    end
end