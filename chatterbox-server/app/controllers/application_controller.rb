class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  get '/messages' do
    messages = Message.all.order(:createdat)
    messages.to_json
  end

  # POST /messages

  post '/messages' do
    message = Message.create(params)
    message.to_json
  end

  # PATCH /messages/:id

  patch '/messages/:id' do
    message = Message.find(params[:id])
    message.update(params)
    message.to_json
  end
  
  # DELETE /messages/:id

  delete '/messages/:id' do
    message = Message.find(params[:id])
    message.destroy
    message.to_json
    "Message deleted successfully"
  end

  
end
