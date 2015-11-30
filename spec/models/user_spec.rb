require 'rails_helper'

describe User do
  describe 'email' do
  	let(:user) { User.create!(email: 'foobar@example.com',
  		password: 'password',
  		password_confirmation: 'password') }

  	it 'absolutely prevents invalid email addresses' do
  	  expect {
  	  	user.update_attribute(:email, 'foo@bar.com')
  	  }.to raise_error( ActiveRecord::StatementInvalid, /email_must_be_company_email/i)
  	end
  end
end