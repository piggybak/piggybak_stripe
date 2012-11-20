
module PiggybakStripe
  class PaymentCalculator::Stripe
    KEYS = ['test_secret_key', 
            'test_publishable_key', 
            'live_secret_key', 
            'live_publishable_key']
    KLASS = ::Stripe
    
    def initialize(payment_method)
      @payment_method = payment_method
    end
    
    def gateway_mode
      Piggybak.config.activemerchant_mode == :test ? "test" : "live" 
    end
    
    def secret_key      
      @payment_method.key_values["#{self.gateway_mode}_secret_key".to_sym]      
    end
    
    def publishable_key
      @payment_method.key_values["#{self.gateway_mode}_publishable_key".to_sym]      
    end
    
  end
end
