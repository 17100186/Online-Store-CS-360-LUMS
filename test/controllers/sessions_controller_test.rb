require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get new" do
    get :new
    assert_response :success
  end

>>>>>>> c33b1a0ef979b662fbdf8f496c663676bd106d28
end
