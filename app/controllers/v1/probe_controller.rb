class V1::ProbeController < ApplicationController
  #get probe position /v1/probe/position/:id
  def position
    @probe = Probe.first_or_initialize
    response = @probe.as_json(only: [:xAxis, :yAxis, :face])
    render json: {position: response}
  end
end
