module Apartment

  module Database
    
    def self.mysql2_adapter(config)
      Adapters::Mysql2Adapter.new config
    end
  end
  
  module Adapters
  
    class Mysql2Adapter < AbstractAdapter
      
    end
    
  end
  
end

