require 'rails_helper'

# t.string   "firstname"
# t.string   "lastname"
# t.string   "email"
# t.datetime "created_at"
# t.datetime "updated_at"

RSpec.describe User, :type => :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:firstname) }
    it { is_expected.to validate_presence_of(:lastname) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end

  describe '#name' do
    it "returns a user's full name" do
      user = User.new(firstname: 'john', lastname: 'smith')
      expect(user.name).to eq 'john smith'
    end
  end

  describe '.by_letter' do
    let(:smith) { User.create(firstname: 'John', lastname: 'Smith', email: 'jsmith@example.com') }
    let(:jones) { User.create(firstname: 'Tim', lastname: 'Jones', email: 'tjones@example.com') }
    let(:johnson) { User.create(firstname: 'John', lastname: 'Johnson', email: 'jjohnson@example.com') }

    context 'matching letters' do
      it "returns a sorted array of results that match" do
        expect(User.by_letter("J")).to eq [johnson, jones]
      end
    end

    context '"non-matching letters' do
      it "returns a blank array" do
        expect(User.by_letter("J")).to be_blank
      end
    end
  end

  
  # it "is valid with a firstname, lastname and email"
  # it "is invalid without a firstname"
  # it "is invalid without a lastname"
  # it "is invalid without an email address"
  # it "is invalid with a duplicate email address"
  # it "returns a contact's full name as a string"
end
