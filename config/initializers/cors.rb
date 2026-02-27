Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://love-calculator-ui.vercel.app'

    resource '*',
      headers: :any,
      methods: [:get, :post, :patch, :put, :delete, :options, :head]
  end
end