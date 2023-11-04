Capybara.configure do |config|
  config.test_id = 'data-test'
end

Capybara.add_selector(:test_id) do
  css { |value| "[data-test-id='#{value}']" }
end
