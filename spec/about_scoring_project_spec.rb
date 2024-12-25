require_relative '../about_scoring_project'

describe "Scoring Project" do
  it "score of empty list is 0" do
    expect(score([])).to eq(0)
  end

  it "score of a single roll of 5 is 50" do
    expect(score([5])).to eq(50)
  end

  it "score of a single roll of 1 is 100" do
    expect(score([1])).to eq(100)
  end

  it "score of multiple 1s and 5s is the sum of individual scores" do
    expect(score([1, 5, 5, 1])).to eq(300)
  end

  it "test score of single 2s 3s 4s and 6s are zero" do
    expect(score([2, 3, 4, 6])).to eq(0)
  end

  it "test score of a triple 1 is 1000" do
    expect(score([1, 1, 1])).to eq(1000)
  end

  it "test score of other triples is 100x" do
    expect(score([2, 2, 2])).to eq(200)
    expect(score([3, 3, 3])).to eq(300)
    expect(score([4, 4, 4])).to eq(400)
    expect(score([5, 5, 5])).to eq(500)
    expect(score([6, 6, 6])).to eq(600)
  end

  it "test score of mixed is sum" do
    expect(score([2, 5, 2, 2, 3])).to eq(250)
    expect(score([5, 5, 5, 5])).to eq(550)
    expect(score([1, 1, 1, 1])).to eq(1100)
    expect(score([1, 1, 1, 1, 1])).to eq(1200)
    expect(score([1, 1, 1, 1, 5])).to eq(1150)
  end
end