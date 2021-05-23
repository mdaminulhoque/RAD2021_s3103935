class Collections < Api
  format :json
  default_format :json

  namespace :collections, desc: "Collections related CRUD operations" do
    desc "collections listing"
    get "/" do
      @collections = Collection.all
      if @collections
        { data: @collections, message: "collections list", status_code: true }
      else
        { message: "No record found!", status_code: false }
      end
    end
  end
end
