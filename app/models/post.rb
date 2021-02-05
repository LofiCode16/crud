class Post < ApplicationRecord
    validates :title, presence: true
    # validates :title, presence: :true, length: { minimum: 5, maximum: 20 }
    # validates :content, presence: :true, length: { minimum: 10, maximum: 300 }
    # validates :author, presence: :true, length: { minimum:3 }
    # validates :title, format: { with: /\A[a-zA-Z\s]+\z/, message: 'Sólo puede contener letras' }  
    # validates :author, inclusion: { in: ['diego', 'david', 'ricardo'], message: 'No eres un autor válido' }
    # # validates :author, numericality: { only_integer: true }
    # before_save :verificar_dv

    # enum author: [:diego, :david, :ricardo]


    # def verificar_dv
    #     # hacer algo con el registro antes de guardarlo usando el callback before_save
    # end
end

