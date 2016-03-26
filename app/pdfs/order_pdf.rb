class OrderPdf < Prawn::Document

	def initialize(shoppingOrder, view)
		super(top_margin: 60)
		@shoppingOrder= shoppingOrder
		@view = view
		order_number
		line_items
		total_price
	end

	def order_number
		text "Order \# #{@shoppingOrder.id}", size: 22 , style: :bold
	end
	def line_items
		move_down 20
		table line_item_rows do
			row(0).font_style = :bold
			columns(2..4).align = :right
			self.row_colors = ["DDDDDD","FFFFFF"]
			self.header = true
		end
	end
	def line_item_rows
		[["ProductID", "Product Name" , "Quantity" , "Unit Price" , "Full Price"]]+
		@shoppingOrder.lineitems.map do |litem|
			[litem.item.id, litem.item.title, litem.quantity,price(litem.item.price), price(litem.item.price * litem.quantity)]
		end
	end
	def price(num)
		@view.number_to_currency(num, :unit => '€' )
	end
	def total_price
		move_down 15
		text "Total for the order: #{price(@shoppingOrder.total)}", size: 25 , style: :bold
	end
end