class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/products' do
        products = Product.all
        products.to_json
    end

    get '/products/:id' do
        product = Product.find(params[:id])
        product.to_json
    end

    get '/users' do
        users = User.all
        users.to_json
    end

    get '/reviews' do
        reviews = Review.all
        reviews.to_json
    end

    post '/products' do 
        new_product = Product.create(
            item_name: params[:item_name],
            product_type: params[:product_type],
            price: params[:price]
        )
        new_product.to_json
    end

    post '/users' do 
        new_user = User.create(
            name: params[:name],
            location: params[:location],
            gender: params[:gender]
        )
        new_user.to_json
    end

    post '/reviews' do 
        new_review = Review.create(
            comment: params[:comment],
            user_id: params[:user_id],
            product_id: params[:product_id]
        )
        new_review.to_json
    end

    delete '/products/:id' do
        product = Product.find(params[:id])
        product.destroy
        puts "#{product.item_name} is deleted"
    end

    delete '/users/:id' do
        user = User.find(params[:id])
        user.destroy
        puts "#{user.name} is deleted"
    end

    delete '/reviews/:id' do
        review = Review.find(params[:id])
        review.destroy
        puts "#{review.comment} is deleted"
    end

    patch '/products/:id' do
        product = Product.find(params[:id])
        product.update(
            item_name: params[:item_name],
            product_type: params[:product_type],
            price: params[:price]
        )
        product.to_json
    end

    patch '/users/:id' do
        user = User.find(params[:id])
        user.update(
            name: params[:name],
            location: params[:location],
            gender: params[:gender]
        )
        user.to_json
    end

    patch '/reviews/:id' do
        review = Review.find(params[:id])
        review.update(
            comment: params[:comment]
        )
        review.to_json
    end
end