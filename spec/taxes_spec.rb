require 'rspec'
require_relative '../lib/taxes'

describe "correct tax liability" do

  let(:taxes){Tax.new(first_name, last_name, annual, paid, rate)}
  let(:first_name){"Keith"}
  let(:last_name){"Bjornburger"}
  let(:annual){1000}
  let(:paid){10}
  let(:rate){38}

  it "takes in first name" do
    expect(taxes.first_name).to eq(first_name)
  end

  it "takes in last name" do
    expect(taxes.last_name).to eq(last_name)
  end

  it "takes in annual income" do
    expect(taxes.annual).to eq(annual)
  end

  it "takes in tax paid" do
    expect(taxes.paid).to eq(paid)
  end

  it "takes in tax rate" do
    expect(taxes.rate).to eq(rate)
  end

  it "calculates tax owed" do
    expect(taxes.owed).to eq(annual * rate/100.0)
  end

  it "calculates tax return" do
    expect(taxes.tax_return).to eq(taxes.owed - paid)
  end

  it "calculates correct tax liability" do
    expect(taxes.liability).to eq()
  end

  it "returns correct output interpolation"


end
