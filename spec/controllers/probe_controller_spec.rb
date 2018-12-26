require 'rails_helper'

RSpec.describe V1::ProbeController, type: :controller do
	describe "POST create" do
		it "returns http success" do
		  post :create
	
		  expect(response).to be_successful
		end
  end
  
  describe "GET position" do
    it "returns a json with probe position" do
      params = { id: 1 }
      expected_position = { xAxis: 0, yAxis: 0, face: :D }

      get :position, params: params

      expect(response.body).to eql(expected_position.to_json)
    end
  end

  describe "PUT move" do
    context "with allowed movements" do
      it "returns a json with probe location" do
        params = { id: 1, movements: ["M", "GE"] }
        expected_location = { xAxis: 1, yAxis: 0 }

        put :move, params: params

        expect(response.body).to eql(expected_location.to_json)
      end
    end

    context "with forbidden movements" do
      it "responds with invalid movement" do
        params = { id: 1, movements: ["GD", "M", "M"] }
        expected_error = { message_error: "Um movimento inválido foi detectado!" }

        put :move, params: params

        expect(response.body).to eql(expected_error.to_json)
      end

      it "responds with invalid movement if one movement isn't allowed" do
        params = { id: 1, movements: ["GD", "M", "M", "movimentoerrado"] }
        expected_error = { message_error: "Um movimento inválido foi detectado!" }

        put :move, params: params

        expect(response.body).to eql(expected_error.to_json)
      end
    end
  end

end
