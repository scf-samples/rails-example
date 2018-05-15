class TodosController < ApplicationController
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def index
    @todos = Todo.all
    json_response(@todos)
  end

  def show
    json_response(Todo.find(params[:id]))
  end
end
