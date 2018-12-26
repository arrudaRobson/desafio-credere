class V1::ProbeController < ApplicationController
  def index
    @message =  {
      'message': 'Resource not found'
    }
    render json: @message
  end
  #get probe position /v1/probe/:id/position
  def position
    probe = Probe.find(params[:id])
    response = probe.as_json(only: [:xAxis, :yAxis, :face])
    render json: response
  end
  #put probe move /v1/probe/:id/move
  def move
    @probe = Probe.find(params[:id])

    params[:movements].each do |move|
      case move
        when "GE" || "GD"
          @probe.face = change_face(@probe.face, move)
        when "M"
          @probe.xAxis = (@probe.xAxis + 1) if @probe.face == 'D' || @probe.face == 'E'
          @probe.yAxis = (@probe.yAxis + 1) if @probe.face == 'B' || @probe.face == 'C'     
        else
          return render json: { message_error: "Um movimento inválido foi detectado!" }, status: 422
      end      
    end

    if @probe.xAxis <= 5 && @probe.yAxis <= 5
      @probe.save!
      response = @probe.as_json(only: [:xAxis, :yAxis])
      render json: response
    else
      render json: { message_error: "A sonda saiu do nosso alcançe!" }, status: 422
    end
  end
  #post create probe position default /v1/probe
  def create
    probe = Probe.new()

		if probe.save
			render json: {data:probe},status: :ok
		else
			render json: {data:probe},status: :unprocessable_entity
		end
  end

  def reset
    @probe = Probe.find(params[:id])
    @probe.update_attributes(xAxis: 0, yAxis: 0, face: 'D')
    @probe.save!
  end

  private

  def change_face(direction, move)
    patterns = { DGE: 'C', DGD: 'B', EGE: 'B', EGD: 'C', CGE: 'E', CGD: 'D', BGE: 'D', BGD: 'E' }
    patterns["#{direction}#{move}".to_sym]
  end
end
