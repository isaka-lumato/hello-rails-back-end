class Api::V1::MessagesController < AplicationController 
  def index 
    @message = Message.all.sample 
     
    if @message
      render json: {status: "SUCCESS", message: "Message was retrieved succesfully!"}, status: :ok
    else
      render json: @message.errors, status: :bad_request
    end
  end
end