require 'rack/lobster'

map '/health' do
  health = proc do |env|
    [200, { "Content-Type" => "text/html" }, ["1"]]
  end
  run health
end

map '/lobster' do
  run Rack::Lobster.new
end

map '/headers' do
  headers = proc do |env|
    [200, { "Content-Type" => "text/plain" }, [
      env.select {|key,val| key.start_with? 'HTTP_'}
      .collect {|key, val| [key.sub(/^HTTP_/, ''), val]}
      .collect {|key, val| "#{key}: #{val}"}
      .sort
      .join("\n")
    ]]
  end
  run headers
end

map '/details' do
  details = proc do |env|
    req = Rack::Request.new(env)
    [200, { "Content-Type" => "text/json" }, {
      'id' => req.params[:id],
      'author': 'William Shakespeare',
      'year': 1595,
      'type' => 'paperback',
      'pages' => 200,
      'publisher' => 'PublisherA',
      'language' => 'English',
      'ISBN-10' => '1234567890',
      'ISBN-13' => '123-1234567890'
    }]
  end
  run details
end
