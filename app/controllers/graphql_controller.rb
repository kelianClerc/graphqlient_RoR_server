class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]
    context = {
        # Query context goes here, for example:
        # current_user: current_user,
    }
    result = Graphql.execute(query, variables: variables, context: context)
    render json: result
  end

  def test
    variables = ensure_hash(params[:variables])
    query = params[:query]
    context = {
        # Query context goes here, for example:
        # current_user: current_user,
    }
    result = Graphql.execute(query, variables: variables, context: context)
    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
      when String
        if ambiguous_param.present?
          ensure_hash(JSON.parse(ambiguous_param))
        else
          {}
        end
      when Hash, ActionController::Parameters
        ambiguous_param
      when nil
        {}
      else
        raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end

  def create
    query_string = params[:query]
    query_variables = params[:variables] || {}
    result = Graphql.execute(query_string, variables: query_variables)
    render json: result
  end
end

