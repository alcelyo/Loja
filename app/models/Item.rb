class Item < ActiveRecord::Base
  belongs_to :produto
  belongs_to :pedido
  
  validates_presence_of :pedido_id, :produto_id, :quantidade
  validates_numericality_of :quantidade_, :only_integer => :true, :greather_than => 0
end