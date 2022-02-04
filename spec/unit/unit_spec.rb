# location: spec/unit/unit_spec.rb
require 'rails_helper'
=begin
begin
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: "jk Rowlings")
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    subject.author = nil
    expect(subject).not_to be_valid
  end
end
end
=end
RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: "jk Rowlings", price: 20.00, published_date: [2000,04,24])
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'it does not have all the properties' do
    subject.title = nil
    subject.author = nil
    subject.price = nil
    subject.published_date = nil
    expect(subject).not_to be_valid
  end
end

=begin
RSpec.describe Book, type: :model do
  subject do
    described_class.new(author: 'J. K. Rowling')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.author = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
  subject do
    described_class.new(price: 10.00)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end
=end
=begin
RSpec.describe Book, type: :model do
  subject do
    select '2021', :from => 'published_date'
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.date = nil
    expect(subject).not_to be_valid
  end
end
=end
