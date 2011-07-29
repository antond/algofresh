require File.expand_path('fibonacci')

describe Fibonacci do
  before(:each) do
    @fib_ary = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
  end

  context "#exponential" do
    it "returns 0 if 0 numbers were requested" do
      fib = Fibonacci.new(1)
      fib.generate.should == 0
    end

    it "returns 1 if 1 number was requested" do
      fib = Fibonacci.new(2)
      fib.generate.should == [0, 1]
    end

    it "returns 10 proper numbers if 10 numbers were requested" do
      fib = Fibonacci.new(10)
      fib.generate.should == @fib_ary
    end
  end

  context "#polynomial" do
    it "returns 0 if 0 numbers were requested" do
      fib = Fibonacci.new(1, :polynomial)
      fib.generate.should == 0
    end

    it "returns 1 if 1 number was requested" do
      fib = Fibonacci.new(2, :polynomial)
      fib.generate.should == [0, 1]
    end

    it "returns 10 proper numbers if 10 numbers were requested" do
      fib = Fibonacci.new(10, :polynomial)
      fib.generate.should == @fib_ary
    end
  end
end
