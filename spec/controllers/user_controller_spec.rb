require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe '#show' do
    let(:user) { FactoryBot.create :user }
    context "after creating new user" do
      it 'get the goals for this user' do
        # the user that is in the test DB:
        goals = user.goals.to_a

        # allow(controller).to receive(:show)
        expect(goals[0].title).to eq("Sample goal")
        expect(goals[1].title).to eq("Sample goal")
      end
    end
  end
end
