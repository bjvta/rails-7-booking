# string_frozen_literal: true

require 'rails_helper'

describe 'Employee Requests', :type => :request do
  describe 'get all employees' do
    let!(:employees) { create_list(:employee, 20) }

    before { get '/api/v1/employees' }

    it 'returns all employees' do
      expect(JSON.parse(response.body).size).to eq(20)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'get one employee' do
    let!(:employee) { create(:employee) }
    it 'return the employee' do
      get "/api/v1/employees/#{employee.id}"
      expect(JSON.parse(response.body).size).to eq(7)
      expect(response).to have_http_status(:success)
    end
    it 'returns 404 when employee does not exist' do
      get "/api/v1/employees/-1"
      expect(response.status).to eq(404)
    end
  end

  describe 'create one employee' do
    let!(:employee) { build(:employee) }

    before {
      post '/api/v1/employees', params: {
        employee: {
          first_name: employee.first_name,
          last_name: employee.last_name,
          phone: employee.phone,
          address: employee.address
        }
      }
    }
    it 'returns created code' do
      expect(response).to have_http_status(:created)
    end
    it 'returns the first_name' do
      expect(JSON.parse(response.body)['first_name']).to eq(employee.first_name)
    end

    it 'returns the last_name' do
      expect(JSON.parse(response.body)['last_name']).to eq(employee.last_name)
    end

    it 'returns the phone' do
      expect(JSON.parse(response.body)['phone']).to eq(employee.phone)
    end

    it 'returns the address' do
      expect(JSON.parse(response.body)['address']).to eq(employee.address)
    end
  end

  describe 'update one employee' do
    let!(:employee) { create(:employee) }
    let!(:employee_2) { build(:employee) }

    before {
      put "/api/v1/employees/#{employee.id}", params: {
        employee: {
          first_name: employee_2.first_name,
          last_name: employee_2.last_name,
          phone: employee_2.phone,
          address: employee_2.address
        }
      }
    }

    it 'return ok status' do
      expect(response.status).to eq(200)
    end
    it 'return the new first_name' do
      expect(JSON.parse(response.body)['first_name']).to eq(employee_2.first_name)
    end
  end

  describe 'delete one employee' do
    let!(:employee) { create(:employee) }

    it 'return ok if the employee has been deleted' do
      delete "/api/v1/employees/#{employee.id}"
      expect(response.status).to eq(200)
    end
  end
end
