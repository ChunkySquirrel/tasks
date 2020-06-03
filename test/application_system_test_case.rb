require "test_helper"

<<<<<<< HEAD
Dir[Rails.root.join('test/support/**/*.rb')].each { |f| require f }

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
  include AuthenticationMacros
=======
class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
end
