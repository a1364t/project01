class AgentsController < ApplicationController
  def index
    @agents = Agent.all
    @rents = Rent.all
    @sells = Sell.all
  end

  def new
    @agent = Agent.new
  end

  def create
    agent = Agent.create agent_params    
    redirect_to login_path
  end

  def edit
    @agent = Agent.find params[:id]
  end

  def updated
    agent = Agent.find params[:id]
    agent.update agent_params
    redirect_to agent
  end

  def show
    @agent = Agent.find params[:id]
  end

  def destroy
    agent = Agent.find params[:id]
    agent.destroy
    redirect_to agents_path
  end

  private
  def agent_params
    params.require(:agent).permit(:title, :name, :phone, :agent_id)
  end
end
