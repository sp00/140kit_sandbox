describe TweetHelper do
  it "should prepped_tweet_and_user correctly" do
    result = TweetHelper.prepped_tweet_and_user(tweet_data)
    result.class.should == Array
    result.length.should == 2
  end
  
  def tweet_data
    return {
      :coordinates=>nil, :created_at=>"Fri Jan 14 05:57:29 +0000 2011", :favorited=>false, :truncated=>false, :id_str=>"25793604714762241", 
      :in_reply_to_user_id_str=>nil, :contributors=>nil, :text=>"setelah td telfonan, skrg musti ngejelasin shallot lg di sms &gt;&lt;\" lol dri td kmna aja pas d'tlp wkwkw", 
      :id=>25793604714762241, :retweet_count=>0, :in_reply_to_status_id_str=>nil, :geo=>nil, :retweeted=>false, :in_reply_to_user_id=>nil, 
      :in_reply_to_status_id=>nil, :in_reply_to_screen_name=>nil, :source=>"web", 


      :entities=>{:urls=>[], :hashtags=>[], :user_mentions=>[]},


      :place=>{:name=>"Kelapa Gading", :country_code=>"", :country=>"Indonesia", :attributes=>{}, :url=>"http://api.twitter.com/1/geo/id/c23a5ae63324c567.json", 
        :id=>"c23a5ae63324c567", :bounding_box=>{:coordinates=>[[[106.886777, -6.181952], [106.934269, -6.181952], [106.934269, -6.136277], [106.886777, -6.136277]]], :type=>"Polygon"}, 
        :full_name=>"Kelapa Gading, Jakarta Utara", :place_type=>"city"}, 


      :user=>{:profile_background_tile=>true, :name=>"Glorya Vitantri", :profile_sidebar_fill_color=>"f9fcfc", :profile_sidebar_border_color=>"0ed2f5", 
        :location=>"UT: -6.893552,107.613068", :profile_image_url=>"http://a0.twimg.com/profile_images/1208894739/DSC00260_normal.JPG", :created_at=>"Fri Aug 14 05:57:40 +0000 2009", 
        :is_translator=>false, :follow_request_sent=>nil, :id_str=>"65575036", :profile_link_color=>"0dc8f7", :favourites_count=>12, :contributors_enabled=>false, 
        :url=>"http://twitter.com/Actorkimbeom", :utc_offset=>25200, :id=>65575036, :listed_count=>28, :profile_use_background_image=>true, :protected=>false, 
        :profile_text_color=>"5e676b", :lang=>"en", :followers_count=>337, :time_zone=>"Jakarta", :geo_enabled=>true, 
        :description=>"im spontanius,,cheerfull,,smart,,\r\nfriendly,,and just wants to make more friends.^^ follow me na.", :verified=>false, 
        :profile_background_color=>"f5f5f5", :notifications=>nil, :friends_count=>149, :profile_background_image_url=>"http://a0.twimg.com/profile_background_images/145583558/1.jpg", 
        :statuses_count=>13835, :screen_name=>"Rhylze", :following=>nil, :show_all_inline_media=>true}
    }
  end
end
