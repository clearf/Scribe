require 'faker'
require 'factory_girl'
require_relative '../spec_helper'


FactoryGirl.define do
    factory :comment do
      description 'this is a hot topic'
    end
end
