$redis = Redis.new(:host => 'localhost', :port => 6379)

if ENV["redis://h:p26e25b37f2783c3977ce69366a19ed6235b9b97a17b3c3c14ab10164ff3907b5@ec2-34-197-246-201.compute-1.amazonaws.com:38969"]
    #if ENV["REDISCLOUD_URL"]
    $redis = Redis.new(:url => ENV["redis://h:p26e25b37f2783c3977ce69366a19ed6235b9b97a17b3c3c14ab10164ff3907b5@ec2-34-197-246-201.compute-1.amazonaws.com:38969"])
    #$redis = Redis.new(:url => ENV["REDIS_URL"])
end

