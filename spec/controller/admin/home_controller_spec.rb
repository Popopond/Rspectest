require 'rails_helper'

module Admin
    describe HomeController, type: :controller do
        let(:user) { create(:user) }

        context "when user is not logged in" do
            it "should redirect to login page" do
                get :index
                expect(response).to redirect_to (new_user_session_path)
                
            end
        end
        context "when user is logged in" do
            before do
                sign_in user
            end
            it 'allow access to admin section' do
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end
end
