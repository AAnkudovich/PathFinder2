class OrderPdf < Prawn::Document

	def initialize(shoppingOrder, view)
		super(top_margin: 60)
		@shoppingOrder= shoppingOrder
		@user= User.find(@shoppingOrder.customer_id)
		@view = view
		image "#{Rails.root}/app/assets/images/aalogo.png", height: 70
		order_number
		line_items
		total_price
	end

	def order_number
		
		text "#{@user.name}", size: 16 , style: :bold, align: :right
		text "#{@user.email}", size: 16 , style: :bold, align: :right

		text "Ordered on #{@shoppingOrder.created_at.to_date}", size: 16 , align: :right

		text "Order \# #{@shoppingOrder.id}", size: 22 , style: :bold
	end
	def line_items
		move_down 40
		bounding_box([80,bounds.top-200], :width => 516) do
		table line_item_rows do
			row(0).font_style = :bold
			columns(2..4).align = :right
			self.row_colors = ["DDDDDD","FFFFFF"]
			self.header = true
		end
		
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
		move_down 40
		text "Total for the order: #{price(@shoppingOrder.total)}", size: 14 , style: :bold, align: :right
		text "Payed in Full by #{@shoppingOrder.payMethod}", size: 14 , style: :bold, align: :right
	end
end