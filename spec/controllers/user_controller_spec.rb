require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#show' do
    let!(:user) { create(:user) }
    let!(:goal_1) { create(:goal, points: 40, user: user) }
    let!(:goal_2) { create(:goal, points: 60, user: user) }
    context "after creating new user" do
      it 'get the goals for this user' do

        goals = user.goals.to_a


        expect(goals[0].title).to eq("Sample goal")
        expect(goals[1].title).to eq("Sample goal")
      end
    end
  end
end
