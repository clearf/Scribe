require 'faker'
require 'factory_girl'
require_relative '../spec_helper'

FactoryGirl.define do
    factory :user do
        # save below alternate code
        # factory :user, class: User do
        email { Faker::Internet.email }
        #you can use Faker to generate fake emails or use
        #the much worse FactoryGirl sequence generator
        # sequence(:email) { |n| "email#{n}@factory.com" }
        name "something"
        password "password"
        after(:build) do |user|
            user.password_salt = BCrypt::Engine.generate_salt
            user.password_hash = BCrypt::Engine.hash_secret(user.password, user.password_salt)
        end
    end
end
