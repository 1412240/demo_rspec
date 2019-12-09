require 'rails_helper'

RSpec.describe Phone, :type => :model do
  describe 'factory' do
    it 'build a new home phone' do
      phone = build(:home_phone)
      expect(phone.phone_type).to eq 'home'  
    end

    it 'build a new work phone' do
      phone = build(:work_phone)
      expect(phone.phone_type).to eq 'work'
    end

    it 'build a new mobile phone' do
      phone = build(:mobile_phone)
      expect(phone.phone_type).to eq 'mobile'
    end
  end
end
