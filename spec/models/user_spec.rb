require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'Validations' do
    # validation examples here
    it 'should save sucessfully with correct entries' do
      @user = User.new(
        first_name:"Donald",
        last_name:"Trump",
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword",
        password_confirmation:"thisispassword")
      expect(@user).to be_valid
   end

   it 'should not save when first_name is nil' do
      @user = User.new(
        first_name:nil,
        last_name:"Trump",
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword",
        password_confirmation:"thisispassword")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("First name can't be blank")
   end

   it 'should not save when last_name is nil' do
      @user = User.new(
        first_name:"Donald",
        last_name:nil,
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword",
        password_confirmation:"thisispassword")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

    it 'should not save when email is nil' do
      @user = User.new(
        first_name:"Donald",
        last_name:"Trump",
        email:nil,
        password:"thisispassword",
        password_confirmation:"thisispassword")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it 'should not save when password is nil' do
      @user = User.new(
        first_name:"Donald",
        last_name:"Trump",
        email: "DonaldJTrump@gamil.com",
        password:nil,
        password_confirmation:"thisispassword")
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'should not save when password_confirmation is nil' do
      @user = User.new(
        first_name:"Donald",
        last_name:"Trump",
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword",
        password_confirmation:nil)
      expect(@user).to_not be_valid
      expect(@user.errors.full_messages).to include("Password confirmation can't be blank")
    end

    it 'should not save when email is already registered' do
      @user1 = User.create(
        first_name:"Donald",
        last_name:"Trump",
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword",
        password_confirmation:"thisispassword")
      @user2 = User.new(
        first_name:"Joe",
        last_name:"Biden",
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword2",
        password_confirmation:"thisispassword2")
      expect(@user2).to_not be_valid
    end

    it 'should not save when password is too short' do
      @user = User.new(
        first_name:"Joe",
        last_name:"Biden",
        email: "DonaldJTrump@gamil.com",
        password:"pwd",
        password_confirmation:"pwd")
      expect(@user).to_not be_valid
    end

    it 'should not save when password is not the same as password_confirmation' do
      @user = User.new(
        first_name:"Joe",
        last_name:"Biden",
        email: "DonaldJTrump@gamil.com",
        password:"thisispassword",
        password_confirmation:"thisisnotpassword")
      expect(@user).to_not be_valid
    end

  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    
  end

end
