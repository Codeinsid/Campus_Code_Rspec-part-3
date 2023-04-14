class PagamentoBoleto < Pagamento
  attr_accessor :quantidade, :produto

  def initialize(args = {})
    @quantidade = args[:quantidade]
    @produto = args[:produto]
  end

  def calcular_valor
    self.valor = quantidade * produto.preco
  end

  def aplicar_desconto(desconto)
    self.valor -= valor * desconto / 100
  end
end
