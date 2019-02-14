class TodosController < ApplicationController
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def index
    @todos = Todo.all
    json_response(@todos)
  end

  def create
    json_response Todo.create(params.permit(:text).to_h)
  end

  def show
    json_response Todo.find_by(params.permit(:id).to_h)
  end

  def destroy
    Todo.where(params.permit(:id).to_h).destroy_all
  end
end
