class IntegrationWorker
  include Sidekiq::Worker

  def perform(*_args)
    10_000.times do |n|
      ExecuterWorker.perform_async(n)
    end
  end
end
