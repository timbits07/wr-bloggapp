require 'rails_helper'

describe Post do

  before :each do
  	@valid_attributes = {
  		title: 'My first post',
  		body: 'Tote bag dreamcatcher twee chillwave. Blue Bottle sriracha chillwave typewriter Vice lo-fi, authentic DIY. Pour-over Echo Park 8-bit, Vice authentic Helvetica hoodie cardigan iPhone. Cornhole Blue Bottle ethical, iPhone normcore umami Odd Future beard trust fund. Literally artisan gluten-free Odd Future salvia Carles. Asymmetrical semiotics cornhole, shabby chic 90\'s dreamcatcher Godard Pitchfork. Sriracha PBR&B Vice quinoa, 8-bit salvia bespoke church-key artisan leggings fanny pack.'
  	}
  end

  describe 'validations' do
  	context 'when all attributes are valid' do
  		it 'it valid' do
  			post = Post.new(@valid_attributes)
      	expect(post).to be_valid
  		end
  	end

  	context 'when title is missing' do
  		it 'is not valid' do
  			post = Post.new(@valid_attributes.merge(title: ''))
  			expect(post).not_to be_valid
  		end
  	end

  	context 'when body is missing' do
  		it 'is not valid' do
  			post = Post.new(@valid_attributes.merge(body: ''))
  			expect(post).not_to be_valid
  		end
  	end
  end
end
