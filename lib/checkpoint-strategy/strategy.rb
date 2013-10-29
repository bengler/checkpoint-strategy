module Checkpoint
  class Strategy
    attr_reader :providers
    def initialize(providers, options = {})
      @providers = providers
      @options = options
    end
  
    def supports?(name)
      providers.map(&:name).include?(name)
    end
  
    def get_provider(name)
      providers.find {|p| p.name == name }
    end
  end
end