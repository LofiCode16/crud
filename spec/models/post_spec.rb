require 'rails_helper'

RSpec.describe Post, type: :model do
    
    subject {
        Post.new(
            title: 'post uno', 
            content: 'contenido con espacios, letras y numeros', 
            author: 'diego'
        )
    }

    describe 'Validations' do
            
        it 'post is valid' do
            expect(subject).to be_valid
        end

        it 'post is valid with a title' do
            subject.title = nil

            expect(subject).to_not be_valid
        end

    end

    context 'Format' do
        
        it 'title only has letters' 
    end
end