# specifies default confid to run tests
require 'test_helper'

class Article < ActiveRecord::Base
  # add a model level validation for the title field
  validates :title, presence: true
end

# ArticleTest defines a test case b/c it inherits from ActiveSupport::TestCase
class ArticleTest < ActiveSupport::TestCase

  # test "the truth" do
    # This is called an assertion - it evaluates code for expected results
    # assert true
  # end

  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end
end



# We could check:
# value = another value
# is object nil?
# does code throw exception?
# length, etc


# test "the truth" do
#   assert true
# end 

# acts like it were: 
# def test_the_truth
#   assest true
# end


