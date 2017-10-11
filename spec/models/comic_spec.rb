require 'rails_helper'

RSpec.describe Comic, type: :model do
  it { should have_valid(:title).when('Spider-man')}
  it { should_not have_valid(:title).when('', nil)}

  it { should have_valid(:publisher).when('Stan Lee')}
  it { should_not have_valid(:publisher).when('', nil)}

  it { should have_valid(:year_published).when(1965)}
  it { should_not have_valid(:year_published).when('', nil, 'Stan Lee')}

  it { should have_valid(:condition).when('New', 'Used')}
  it { should_not have_valid(:condition).when('', nil)}
end
