class Owner
  attr_reader :login, :id, :avatar_url, :url, :html_url, :followers_url
  attr_reader :subscriptions_url, :organizations_url, :repos_url, :received_events_url, :type
  def initialize(response)
    @login = response["login"]
    @id = response["id"]
    @avatar_url = response["avatar_url"]
    @url = response["url"]
    @html_url = response["html_url"]
    @followers_url = response["followers_url"]
    @subscriptions_url = response["subscriptions_url"]
    @organizations_url = response["organizations_url"]
    @repos_url = response["repos_url"]
    @received_events_url = response["received_events_url"]
    @type = response["type"]
  end
end
