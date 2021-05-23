class Orders < Api
  format :json
  default_format :json

  helpers do
    def test_params
      @permitted_params ||= declared(params, include_missing: false, include_parent_namespaces: false)
    end
  end

  namespace :orders, desc: "Bags related CRUD operations" do
    desc "orders listing"
    get "/" do
      @orders = Order.all
      if @orders
        { data: @orders, status_code: true }
      else
        { message: "No record found!", status_code: false }
      end
    end

    desc "orders listing by Vendor"
    get "/user/:id" do
      @orders = Order.where(user_id: params[:id]).includes(:user, :organization, :category)
      if @orders
        order_data = []
        @orders.each do |order|
          order_data << {
            organization: order.organization.name,
            category: order.category.name,
            status: order.status,
            verified: order.verified,
            description: order.description,
            date: order.created_at,
          }
        end
        { data: order_data, status_code: true }
      else
        { message: "No record found!", status_code: false }
      end
    end

    desc "order insert"
    post "/" do
      @order = Order.new(params)
      if @order.save!
        { data: @order, message: "Order is successfully created", status_code: true }
      else
        { message: "something went wrong", status_code: false }
      end
    end

    desc "orders listing by Vendor"
    get "/vendor/:id" do
      @orders = Order.where(vendor_id: params[:id])
      if @orders
        { data: @orders, status_code: true }
      else
        { message: "No record found!", status_code: false }
      end
    end
  end
end
