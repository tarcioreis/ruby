class Cliente

    #cria getters e setters com um comando
    attr_accessor :nome, :sobrenome

    def initialize (nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end
end