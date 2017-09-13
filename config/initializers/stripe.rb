if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_BKc5XBtlhewHuv0xONrivGnB',
    secret_key: 'sk_test_rOHzaEDPBFkGKJSLqt98Pp85'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]