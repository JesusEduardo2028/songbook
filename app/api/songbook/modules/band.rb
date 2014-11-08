module Songbook
  module Modules
    class Band < Grape::API

      format :json

      content_type :json, 'application/json'

      version :v1 do
        resource :bands do

        end
      end
    end
  end
end
