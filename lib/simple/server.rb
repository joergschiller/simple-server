require "rack"

module Simple
  class Server
    def self.app(root)
      Rack::Builder.app do
        use Rack::Static, :urls => [""], :root => root, :index => "index.html"
        run lambda { |env| [404, { "Content-Type" => "text/plain" }, "Not Found"] }
      end
    end
  end
end
