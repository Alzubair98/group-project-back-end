Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "http://localhost:3000"
  
      resource "*",
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end

    allow do
        origins "https://639c723c7aba1d0ecc793ba7--helpful-douhua-bfc6b0.netlify.app/"
    
        resource "*",
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head],
          credentials: true
      end
end