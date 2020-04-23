=begin
  
  
System Test Checklist
Testing complete goal

As user Carlo, given that he has 0 points and 2 incomplete goals with 100 points total, when he goes to his user#show page and completes both goals, then his total points should equal 100
* Setup
    * as and given: use factorybot to create in the test database a user Carlo with 2 incomplete goals with 100 pts total
* excercise the code you want to text
    * when:
        * go to user#show
        * go to goals#complete for goal 1
        * go to goals#complete for goal 2
* verify that the code does what is expected
    * then: expect(@user.points).to eq(100)
* Tear down
    * because we are using factorybot, this happens automatically
=end

require "rails_helper"

RSpec.describe "Reversing a goal", :type => :system do #left off editing this line
  context "when a user has two incomplet goals totaling 100pts" do 
    let!(:user) { create(:user) }
    let!(:goal_1) { create(:goal, points: 40, complete: true, user: user) }
    let!(:goal_2) { create(:goal, points: 60, complete: true, user: user) }

    it "Adds points from goal to a user when they complete a goal" do
        visit user_path(user)
        Capybara.match = :first 
        click_on "Complete Goal"

        expect(page.find("#completed_goal_0")).to have_content("40")
    end
  end
end

