##01
- Write the User class definition to pass the below tests
	- Be sure to run the testing suite (ex_01_spec.rb)

```ruby

describe User do
  before do
    @user = User.new(first_name: "Bob", last_name: "Waters", email: "bob@example.com")
  end
  describe  "should have" do
    it "a first name" do
      @user.first_name.should == "Bob"
    end
    it "a last name" do
      @user.last_name.should == "Waters"
    end
    it "an email address" do
      @user.email.should == "bob@example.com"
    end
  end
  it "should display nicely" do
    @user.to_s.should == "Bob Waters can be reached by email at bob@example.com"
  end
end

```
