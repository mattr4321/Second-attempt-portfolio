json.extract! product, :id, :name, :description, :image_url, :created_at, :updated_at
json.url product_url(product, format: :json)

<%= render partial: 'form' %>

<% render @products %>

<%= render 'shared/form', locals: { product: product } %>
