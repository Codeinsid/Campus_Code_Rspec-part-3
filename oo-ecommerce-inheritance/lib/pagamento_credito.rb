class PagamentoCredito < Pagamento
  attr_accessor :juros

  def initialize(quantidade:, produto:, juros:)
    @juros = juros
    super(quantidade: quantidade, produto: produto)
  end

  def calcular_valor
    super() * (1 + @juros/100)
  end

  def calcular_valor_com_juros
    calcular_valor
  end

def atualizar_valor
    @valor *= (1 + @juros.to_f/100) 
  end
end