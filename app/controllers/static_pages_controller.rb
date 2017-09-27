class StaticPagesController < ApplicationController

	def index
		@products = Product.all
	end

	def landing_page
	  @products = Product.limit(3)
	  @featured_product = Product.first
	end

	def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  UserMailer.contact_form(@email, @name, @message).deliver_now
	end

end
