require 'rails_helper'

RSpec.describe Probe, type: :model do
  it "goes to the initial position" do
    probe = Probe.new()
    expected = { "xAxis"=> 0, "yAxis"=> 0, "face"=>"D" }
    testItens = probe.as_json(only: [:xAxis, :yAxis, :face])
    expect(testItens).to eql(expected)
  end

  it "resets to the initial position" do
    probe = Probe.new(xAxis: 2, yAxis: 3, face: 'E')
    #testItens = probe.as_json(only: [:xAxis, :yAxis, :face])
    probe.update_attributes(xAxis: 0, yAxis: 0, face: 'D')
    test = probe.as_json(only: [:xAxis, :yAxis, :face])
    expected = { "xAxis"=> 0, "yAxis"=> 0, "face"=>"D" }
    expect(test).to eql(expected)
  end
end