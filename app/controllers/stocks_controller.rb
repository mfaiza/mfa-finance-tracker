class StocksController < ApplicationController

	def search
		if params[:stock].present?
			@stock = Stock.new_lookup(params[:stock])
			if @stock
				render 'users/portfolio'
			else
				flash[:alert] = "please enter a valid symbol to search!"
				redirect_to portfolio_path
			end
		else
			flash[:alert] = "Please enter a symbol to search"
			redirect_to portfolio_path
		end
	end

end