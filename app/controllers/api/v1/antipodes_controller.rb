class Api::V1::AntipodesController < ApplicationController
  def show
    if valid_key?
      render json: AntipodeSerializer.new(Antipode.new(params[:lat], params[:long]))
    else
      render body: "Unauthorized", status: 401
    end
  end

  private

  def lat_long
    params.permit(:lat, :long)
  end

  def valid_key?
    binding.pry
    request.env["HTTP_API_KEY"] == "taco_is_a_sandwich"
  end

end
