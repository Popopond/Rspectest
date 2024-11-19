require 'rails_helper'

describe 'Admin access', type: :system do
    let(:user) { create(:user) } #สร้างก็ต่อเมื่อมีการเรียกใช้
    
    context "when user is not logged in" do
        it "should redirect to login page" do
            visit admin_root_path
            expect(page).to have_content('Log in')
        end
    end
    context "when user is logged in" do
        before do
            sign_in user
        end
        it 'allow access to admin section' do
            visit admin_root_path
            expect(page).to have_content('Admin::Home#index')
        end
    end
    
end
    