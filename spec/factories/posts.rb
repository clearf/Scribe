require 'faker'
require 'factory_girl'
require_relative '../spec_helper'


FactoryGirl.define do
    factory :post do
      topic 'trending topic'
    end
end
