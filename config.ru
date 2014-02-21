$LOAD_PATH << File.dirname(__FILE__)
Encoding.default_external = 'UTF-8' if defined?(Encoding)
require "./barkeep_server"
require "resque/server"

if defined?(PhusionPassenger)
  # Disconnect db before forking workers
  DB.disconnect
  PhusionPassenger.on_event(:starting_worker_process) do |forked|
    if forked
      STDERR.puts "Forked worker"
      RedisManager.reconnect
      Resque.redis.client.reconnect
    end
  end
end

map("/resque") { run Resque::Server.new }
map(BarkeepServer.pinion.mount_point) { run BarkeepServer.pinion }
map("/") { run BarkeepServer }
