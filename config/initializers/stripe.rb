if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_3yzQXv4IP3lLJ24W6dqSuohV',
    :secret_key => 'sk_test_AcLClPrYDe9WCgkwvxHVgm3T'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
