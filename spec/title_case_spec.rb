require ('rspec')
require ('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("batman").title_case()).to(eq("Batman"))
  end
  it("capitalizes the first letter of a multiple word string") do
    expect(("harry potter").title_case()).to(eq("Harry Potter"))
  end
  it("does not capitalize designated words (like prepositions, conjunctions, etc)") do
    expect(("harry potter and the prisoner of azkaban").title_case()).to(eq("Harry Potter and the Prisoner of Azkaban"))
  end
  it("capitalizes designated words if they are the first word") do
    expect(("the illiad").title_case()).to(eq("The Illiad"))
  end
  it("handles non-letter characters") do
    expect(("20,000 leagues under the sea").title_case()).to(eq("20,000 Leagues under the Sea"))
  end
  it("manages all uppercase entries") do
    expect(("BATMAN").title_case()).to(eq("Batman"))
  end
  it("manages mixed case entries") do
    expect(("HarRy PoTTer").title_case()).to(eq("Harry Potter"))
  end
  # it("manages unique case entries") do
  #   expect(("old McDonald").title_case()).to(eq("Old McDonald"))
  # end
end
