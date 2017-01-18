if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_O43ueg9ON5g8lLRlQQtKcEbu',
    :secret_key => 'sk_test_tQZV5AfmfLvbjQlI6KFAde7B Roll Key
Test publishable Key:'    
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]