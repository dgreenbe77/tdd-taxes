require 'rspec'
require_relative '../lib/tax_class'


describe "correct tax liability" do

  let(:taxes){Tax.new(first_name, last_name, annual, paid, rate)}
  let(:first_name){"Keith"}
  let(:last_name){"Bjornburger"}
  let(:annual){1000}
  let(:paid){10}
  let(:rate){38}



  let(:paid2){400}
  let(:taxes2){Tax.new(first_name, last_name, annual, paid2, rate)}

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
    expect(taxes.owed).to eq(380)
  end

  it "calculates tax return" do
    expect(taxes.tax_due).to eq(370)
  end

  it "calculates correct tax liability where it is owed" do
    expect(taxes.liability).to eq("Keith Bjornburger owes $370 in taxes")
  end

  it "calculates correct tax liability where it is a return" do
    expect(taxes2.liability).to eq("Keith Bjornburger will receive a refund of $20")
  end




end
