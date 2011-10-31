class Admin::ProdutosController < Admin::BaseController

  def index
    carregar_pagina
        @produtos = Produto.paginate( :page => @page, :per_page => @per_page )
  end

end