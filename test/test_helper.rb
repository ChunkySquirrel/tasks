ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

<<<<<<< HEAD
require 'minitest/reporters'

Minitest::Reporters.use!(Minitest::Reporters::ProgressReporter.new(color: true),ENV,Minitest.backtrace_filter)

=======
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49
class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
<<<<<<< HEAD
  #fixtures :all
=======
  fixtures :all
>>>>>>> c2670d2b8950f5d246f872278be627777ba05d49

  # Add more helper methods to be used by all tests here...
end
