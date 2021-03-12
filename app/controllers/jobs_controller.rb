class JobsController < ApplicationController
  def index
    IntegrationWorker.perform_async
  end
end
