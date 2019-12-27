class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.new.hour

    #resp.write "#{t}\n"

    if Time.now.hour.between?(0, 11)
      resp.write "Good Morning!"
    elseif Time.now.hour.between?(12, 23)
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
