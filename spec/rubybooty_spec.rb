require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Rubybooty" do
  it "should say AARRR!!" do
    Rubybooty.say_something.should == "AARRR!"
  end
end
