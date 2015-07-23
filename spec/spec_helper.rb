begin
  require 'rspec'
rescue LoadError => e
  require 'spec'
end

require 'sunspot_solr-jts'

rspec =
  begin
    RSpec
  rescue NameError, ArgumentError
    Spec::Runner
  end

rspec.configure do |config|
  # Maybe later...
end
