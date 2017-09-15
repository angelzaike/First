class PaymentsController < ApplicationController
  def create
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: 2000, # amount in cents, again
        currency: "usd",
        source: token,
        description: params[:product_id]
      )
    rescue Stripe::CardError => e
      # The card has been declined
    end
  end
  def product_id
   @product = Product.payment(product_params)
 
 def 
  @user == current_user

end

end