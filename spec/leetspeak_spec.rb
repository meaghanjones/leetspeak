require ('rspec')
require ('leetspeak')

describe('String#leetspeak') do
  it("returns a string as is when no Leetspeak rules apply") do
    expect(("happy").leetspeak()).to(eq("happy"))
  end

  it("returns 3 when the letter e is present") do
    expect(("very").leetspeak()).to(eq("v3ry"))
  end

  it("returns 0 when the letter o is present") do
    expect(("how").leetspeak()).to(eq("h0w"))
  end

  it("returns 1 when I is present") do
    expect(("Italy").leetspeak()).to(eq("1taly"))
  end

  it("returns z when the letter s lowercase is present") do
    expect(("plays").leetspeak()).to(eq("playz"))
  end

  it("returns s is the first letter of a word it should not be replaced with z") do
    expect(("Sarah").leetspeak()).to(eq("Sarah"))
  end

  it("returns i when i is not capital") do
    expect(("Epicodus").leetspeak()).to(eq("3pic0duz"))
  end


end
