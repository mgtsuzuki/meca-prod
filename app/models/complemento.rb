class Complemento < ApplicationRecord
    belongs_to :user

    # o apelido passa a ser mandatorio
    validates_presence_of :apelido

    validates_presence_of :codigo, message: "precisa ser fornecido um codigo"
    validates_length_of :codigo, in: 6..24, message: "precisa possuir de 6 a 24 caracteres"
    validates_format_of :codigo, with: /[0-9]/, message: "precisa ter pelo menos um digito"
    validates_format_of :codigo, with: /[A-Z]/, message: "precisa ser pelo menos uma letra maiscula"
    validates_format_of :codigo, with: /[a-z]/, message: "precisa ser pelo menos uma letra minuscula"

    validates_uniqueness_of :description, case_sensitive: false, message: "ja foi fornecido, nao pode repetir"
    validates_uniqueness_of :apelido, scope: :pais

    validates_numericality_of :ano_graduacao, allow_nil: true, greater_than: 1920, less_than_or_equal_to: Time.now.year, only_integer: true
    validates_numericality_of :temperatura_corpo, allow_nil: true, greater_than_or_equal_to: 130, only_integer: false
    validates_numericality_of :preco, allow_nil: true, only_integer: false

    validates_inclusion_of :aniversario, in: Date.civil(1900, 1, 1) .. Date.today
    validates_presence_of :horario_favorito
    validates_presence_of :preco, if: :require_description_presence?
    
    def require_description_presence?
        self.can_send_email
    end

    validate :description_length_words
    
    def description_length_words
        unless self.description.blank? then
            num_words = self.description.split.length
            if num_words < 5 then
                self.errors.add(:description, "precisa possuir pelo 5 palavras")
            elsif num_words > 50 then
                self.errors.add(:description, "precisa possuir menos que 50 palavras")
            end
        end
    end
end