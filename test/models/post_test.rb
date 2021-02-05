require 'test_helper'

class PostTest < ActiveSupport::TestCase

  def setup 
    @post = Post.new(
                      title: 'post uno', 
                      content: 'contenido con espacios, letras y numeros', 
                      author: 'diego'
                      )
  end

  test 'post is valid' do
    assert @post.valid?
  end

  test 'post is not valid without a title' do
    @post.title = nil

    refute @post.valid?, 'El post está siendo válido sin un título'
  end

  test 'title is valid only with letters' do
    @post.title = 123

    refute @post.valid?, 'el titulo no puede contener numeros'
  end
end
