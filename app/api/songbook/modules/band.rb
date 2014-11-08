module Songbook
  module Modules
    class Band < Grape::API

      format :json

      content_type :json, 'application/json'

      version :v1 do
        resource :bands do
          # GET
          desc 'returns all existent bands', {
              entity: Songbook::Modules::Band,
              notes: <<-NOTE
                ### Description
                It returns all paginated bands.  by default: page = 1 per_page = 10

                ### Example successful response

                    [
                      {
                        "id": "137a66834fb7802c280000ef",
                        "name": "Foo Figthers",
                        "biography" : "band biography",
                        "genre": "Rock",
                      },
                      {
                        "id": "137a66834fb7802c280000ff",
                        "name": "Dream Theater",
                        "biography" : "band biography",
                        "genre": "Progressive Rock",
                      },
                    ]
              NOTE
            }
          params do
            requires :songbook_token, type: String, desc: 'Auth token', documentation: { example: '837f6b854fc7802c2800302e' }
            optional :page, type: Integer
            optional :per_page, type: Integer
          end
          get '/', http_codes: [ [200, "Successful"], [401, "Unauthorized"] ] do
            content_type "text/json"
            page = params[:page] || 1
            per_page = params[:per_page] || 10
            WillPaginate.per_page = per_page
            bands = ::Band.page(page)
            present bands
          end

        end
      end
    end
  end
end
