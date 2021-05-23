class CollectionProducts < Api
  format :json
  default_format :json

  namespace :collection_products, desc: "collection products related CRUD operations" do
    desc "collection products listing"
    get "/" do
      @collection_products = CollectionProduct.all
      if @collection_products
        { data: @collection_products, status_code: true }
      else
        { message: "No record found!", status_code: false }
      end
    end
  end
end
