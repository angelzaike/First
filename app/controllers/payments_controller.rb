class PaymentsController < ApplicationController
  def create
  	@product = Product.find(params[:product_id])
  	# @product.price = params[:product_price]
  	@user == current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: @product.price.gsub('$', '').to_i * 100, # amount in cents, again
        currency: "usd",
        source: token,
        description: params[:stripeEmail]
  )
 
  if charge.paid
  	Order.create()
  end
    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
    err = body[:error]
    flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
  end
  redirect_to payments_thanks_path
    end
  end