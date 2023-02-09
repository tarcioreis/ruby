require_relative 'cliente'

class Conta
    # cria getters e setters
    attr_reader :numero, :titular, :saldo
    attr_writer :titular, :saldo

    def initialize (numero, titular, saldo)
        @numero = numero;
        @titular = titular;
        @saldo = saldo;
    end

    def sacar (valor)
        if (valor > self.saldo)
            puts "Não foi possível sacar. Saldo indisponível"
            return false
        else
            self.saldo -= valor
        end
    end

    def depositar (valor)
        self.saldo += valor
    end

    def transferir (conta_destino, valor)
        if(!sacar(valor))
            puts "Não foi possível transferir. Valor acima do saldo ou do limite!"
        else
            conta_destino.depositar(valor)
            puts "Valor transferido com sucesso!"
        end
    end
end