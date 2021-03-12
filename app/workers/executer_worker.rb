class ExecuterWorker
  include Sidekiq::Worker

  def perform(num)
    fetcher = DataFetcher.new
    processor = DataProcessor.new
    sender = DataSender.new
    data = fetcher.fetch_data
    processed = processor.process(data)
    sender.send(processed)
    puts "Integration #{num}"
  end
end
