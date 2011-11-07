ActiveRecord::ConnectionAdapters::ConnectionHandler.class_eval do
    alias_method :rails_retrieve_connection_pool, :retrieve_connection_pool

    def retrieve_connection_pool(klass)
      if Apartment::Database.current_database and klass != Apartment::Database.current_pool_klass
        pool = rails_retrieve_connection_pool Apartment::Database.current_pool_klass
      end
      return pool if pool

      rails_retrieve_connection_pool(klass)
    end

end
