# frozen_string_literal: true

module Api
  module V1
    class EmployeesController < ApiController
      skip_before_action :verify_authenticity_token

      def index
        @employees = Employee.all
        render json: @employees.map{ |b| b.as_json }
      end

      def create
        employee = Employee.create(employee_params)
        render json: employee.as_json, status: :created
      end

      def show
        empployee = Employee.find(params[:id])
        render json: empployee.as_json
      end

      def update
        employee = Employee.find(params[:id])
        employee.update(employee_params)
        render json: employee.as_json
      end

      def destroy
        Employee.destroy(params[:id])
        render json: { success: true }
      end
      private
      def employee_params
        params.require(:employee).permit(:first_name, :last_name, :phone, :address)
      end
    end
  end
end
