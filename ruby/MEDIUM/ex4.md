
##04

- Write a Sinatra application 
- Write the MINIMAL lines of code to meet these requirments
	- Be sure to run the testing suite (ex_04_spec.rb)

```ruby

describe "Ex_3" do 

  BASE_URL = "http://127.0.0.1:4567"

  def get(path)
    # GETs the response text for any given path in one swoop
    HTTParty.get(BASE_URL+path).parsed_response
  end
  
  describe "/" do 
    it "should display 'Good Morning'" do 
      expect(get("")).to eq("Good Morning");
    end
  end

  describe "/:anything_i_type_here" do 
    it "should display 'anything_i_type_here'" do 
      expect(get("/anything_i_type_here")).to eq("Welcome to \"anything_i_type_here\"");
    end
  end

  describe "/happy" do 
    it "should display 'happy'" do 
      expect(get("/happy")).to eq("Welcome to \"happy\"");
    end
  end

  describe "/excited" do 
    it "should display 'excited'" do 
      expect(get("/excited")).to eq("Welcome to \"excited\"");
    end
  end

  describe "/monday" do 
    it "should display 'monday'" do 
      expect(get("/monday")).to eq("Welcome to \"monday\"");
    end
  end

end

```