def who_is_online(friends)
  out = { "online" => [], "offline" => [], "away" => [] }

  friends.each do |x|
    if (x["status"] == "online" && x["last_activity"] <= 10)
      out["online"] << x["username"]
    elsif (x["status"] == "offline")
      out["offline"] << x["username"]
    else
      out["away"] << x["username"]
    end
  end
  
  out.select! { |_k, v| v != [] }
end
