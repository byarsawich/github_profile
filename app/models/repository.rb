class Repository
  attr_reader :id, :name, :full_name, :private, :description
  attr_reader :fork, :created_at, :updated_at, :pushed_at, :homepage
  attr_reader :size, :stargazers_count, :watchers_count, :language, :has_issues
  attr_reader :has_downloads, :has_wiki, :has_pages, :forks_count, :open_issues_count
  attr_reader :forks, :open_issues, :watchers, :default_branch, :urls

  def initialize(response)
    @id = response["id"]
    @name = response["name"]
    @full_name = response["full_name"]
    @private = response["private"]
    @description = response["description"]

    @fork = response["fork"]
    @created_at = response["created_at"]
    @updated_at = response["updated_at"]
    @pushed_at = response["pushed_at"]
    @homepage = response["homepage"]

    @size = response["size"]
    @stargazers_count = response["stargazers_count"]
    @watchers_count = response["watchers_count"]
    @language = response["language"]
    @has_issues = response["has_issues"]

    @has_downloads = response["has_downloads"]
    @has_wiki = response["has_wiki"]
    @has_pages = response["has_pages"]
    @forks_count = response["forks_count"]
    @open_issues_count = response[""]

    @forks = response["forks"]
    @open_issues = response["open_issues"]
    @watchers = response["watchers"]
    @default_branch = response[""]
    @urls = {}
    response.each do |key, value|
      @urls[key] = value if key.match(/\w*url\b/i)
    end
  end
end
