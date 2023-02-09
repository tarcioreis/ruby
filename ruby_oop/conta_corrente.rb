require_relative 'conta'

class ContaCorrente < Conta
    
    # cria getters e setters com um comando
    attr_accessor :limite

    def initialize (numero, titular, saldo, limite)
        # chama o initialize de Conta
        super(numero, titular, saldo)
        @limite = limite
    end

    def sacar (valor)
        if (saldo + limite) >= valor
            self.saldo -= valor;
        else
            return false
        end
    end

end