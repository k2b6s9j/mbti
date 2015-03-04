require 'spec_helper'
require 'mbti/type'

describe Mbti::Type do

  before :each do
    @type = Mbti::Type
  end

  it do
    expect(@type).to be
  end

  it do
    expect(@type).to be_truthy
  end

  it do
    expect(@type).to_not be_falsey
  end

  it do
    expect(@type).to_not be_nil
  end

  it do
    expect(@type).to be_a Class
  end

end
