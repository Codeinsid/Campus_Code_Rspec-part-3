class Pagamento
  attr_accessor :produto, :quantidade, :valor

  def initialize(quantidade:, produto:)
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor
    produto.remove_estoque(quantidade)
    @valor = calcular_valor_sem_desconto
  end

  def calcular_valor_sem_desconto
    @quantidade * produto.preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end