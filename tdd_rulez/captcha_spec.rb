class CaptchaSolver

  def call(captcha)
    digits = captcha.to_s.split("").map(&:to_i)
    pairs = digits.each_slice(2)
    matching_pairs = pairs.select { |pair| pair.first == pair.last }
    matching_pairs.reduce(0) { |sum, pair| pair.first + sum }
  end

end

RSpec.describe 'captcha' do
  subject(:captcha_solver){CaptchaSolver.new}
  context "when the captcha is 2 pairs of digits" do
    let(:captcha){1122}
    let(:solution){3}
    it "sums counting the pairs of digits only once" do
      expect(captcha_solver.call(captcha)).to eq(solution)
    end
  end

  context "when the captcha contains no repeat digits" do
    let(:captcha){1234}
    let(:solution){0}
    it "ignores lone digits" do
      expect(captcha_solver.call(captcha)).to eq(solution)
    end
  end

  context "when the captcha contains no repeat digits" do
    let(:captcha){0221}
    let(:solution){3}
    it "ignores lone digits" do
      expect(captcha_solver.call(captcha)).to eq(solution)
    end
  end

  context "When the captcha begins and ends with same digit" do
    let(:captcha){91212129}
    let(:solution){9}
    it "considers the list circular" do
      expect(captcha_solver.call(captcha)).to eq(solution)
    end
  end
  # context "When captcha begins and ends with same digit"
  # 91212129 produces 9 because the only digit that matches the next one is the last digit, 9.
end