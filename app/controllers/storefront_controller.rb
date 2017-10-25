class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  # 	@category = Category.find(params[:cat_id])
  # 	@products = Product.all
  # 	@products_by_cat = []

  # 	@products.each do |product|
  # 		if product.category.id == @category.id
  # 			@products_by_cat.push(product)
  # 	    end
  # end

  	@products = Product.where(category_id: params[:cat_id])
  	@category = Category.find(params[:cat_id])

  end

  def items_by_brand
  		# @brand_name = params[:brand]
  		# @products = Product.all
  		# @products_by_cat = []

  		# @products.each do |product|
  		# 	if product.brand == @brand_name
  		# 		@products_by_brand.push(product)
  				
  		# 	end
  		# end
  	@products = Product.where(brand: params[:brand])
  	@brand = params[:brand]
  end
end
