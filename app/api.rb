require 'grape'

class API < Grape::API

  get "/" do
    Thing.find :all
  end

  post "/" do
    # All parameters will be stored in the model
    thing = Thing.new params

    if thing.save
      { thingId: thing.id }
    else
      error!({ errors: thing.errors.messages }, 403)
    end
  end

end
