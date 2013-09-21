describe "Application 'TouchRoom'" do
  before do
    @app = UIApplication.sharedApplication
  end
  context 'foo' do
    it "has one window" do
      @app.windows.size.should == 1
    end
  end
end
