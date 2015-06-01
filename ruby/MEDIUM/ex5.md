
##05

####Mailable

- Find `ex_05_spec.rb`
- Make all the tests pass
- This will include writting two classes and a module

```ruby

# encoding: UTF-8
require 'rspec'
require_relative 'mailable'
require_relative 'postcard'
require_relative 'package'

describe "Holiday Exercise 5" do
  describe Mailable do
    class Mailer
      include Mailable
    end
    it "should have a ship_to address and a stamp value" do
      mailer = Mailer.new(ship_to: "902", stamp_value: 20)
      mailer.ship_to.should == "902"
      mailer.stamp_value.should == 20
    end
  end
  describe Postcard do
    before do
      @postcard = Postcard.new(ship_to: "41 USW", stamp_value: 0.40, message: "We miss Bonnie!")
    end
    it "should be mailable" do
      @postcard.ship_to.should == "41 USW"
    end
    it "should have a message" do
      @postcard.message.should == "We miss Bonnie!"
    end
  end
  describe Package do
    before do
      @package = Package.new(ship_to: "10E21", stamp_value: 5.12, contents: "some cats")
    end
    it "should be mailable" do
      @package.ship_to.should == "10E21"
    end
    it "should be scratchy" do
      @package.contents.should == "some cats"
    end
    it "should be shakeable" do
      @package.shake
      @package.broken?.should be_false
    end
    it "can be fragile" do
      fragile_package = Package.new(ship_to: "10E21", stamp_value: 5.12, contents: "♥", fragile: true)
      fragile_package.shake
      fragile_package.contents.should == "♥"
      fragile_package.broken?.should be_true
    end
  end
end


```