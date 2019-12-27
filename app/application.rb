class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.new.hour

    resp.write "#{t}\n"

    if t < 12
      resp.write "Good Morning!"
    else
      resp.write "Afternoon!"
    end

    resp.finish
  end

end
