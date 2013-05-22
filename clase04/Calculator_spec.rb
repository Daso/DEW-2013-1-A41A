require './Calculator'
describe Calculator do 
  before do
    @calculator = Calculator.new
  end
  describe "#add" do
    it "should return 4 when adding 2 to 2" do 
      @calculator.add(2,2).should == 4
    end	

    it "should return 1 when adding 4 to -3" do
      @calculator.add(4,-3).should == 1   
    end
  end	

  describe "#substract" do 
    it "should return 5 when substracting 4 to 9" do 
       @calculator.substract(9,4).should == 5
    end
  end	

  describe "#multiply" do 
    it "should return 20 when multiplying 5 to 4" do 
      @calculator.multiply(5,4).should == 20
    end
  end
  
  describe "#is_zero" do 
     it "should return false when the number is not 0" do 
       @calculator.is_zero(8).should == false
     end	

     it "should return true when  the number is 0" do
       @calculator.is_zero(0).should == true
     end
  end 	
  
  describe "#divition" do 
    it "should return 0 when dividing 4 by 0" do 
      @calculator.divition(4,0).should == 0
    end

    it "should return 2 when dividing 4 by 2" do 
      @calculator.divition(4,2).should == 2
    end 
  end
end
