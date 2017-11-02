package 'httpd' do
  action :install
end


template '/var/www/html/index.html' do
  source 'index.html.erb'
  # content "<h1>Hello, world!</h1>
  #   # <h2>PLATFORM: #{node['platform']}</h2>
  #     # <h2>HOSTNAME: #{node['hostname']}</h2>
  #       # <h2>MEMORY: #{node['memory']}</h2>
  #         # <h2>CPU Mhz: #{node['cpu']['0']['mhz']}</h2>"
  #           # rights :read, 'Everyone'
  #           end
  #
end

service 'httpd' do
  action [ :enable, :start ]
end
