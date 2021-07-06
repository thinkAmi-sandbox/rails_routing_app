require 'net/http'
require 'uri'

namespace :print_redirect do
  desc 'リダイレクトの確認'
  task :run do
    def print_url(url)
      redirect_url = Net::HTTP.get_response(URI.parse(url))['location']
      puts "#{url} => #{redirect_url}"
    end

    BASE_URL = 'http://localhost:3760/home'
    QUERY_STRING = '?foo=1&bar=2&baz=3'

    print_url("#{BASE_URL}/no_query")
    print_url("#{BASE_URL}/move_with_field")
    print_url("#{BASE_URL}/move_with_unpermitted_params#{QUERY_STRING}")
    print_url("#{BASE_URL}/move_with_permitted_params#{QUERY_STRING}")
  end
end
