class SearchesIndex < Chewy::Index
  define_type User.directors.include(:movies), name: 'director' do
    field :name, :bio
    field :movies do
      field :title
      field :description
    end
  end

  define_type Movies.include(:directors) do
    field :title, :description
    field :director do
      field :name
      field :bio
    end
  end

  def self.search(query)
    filter{ q(query_string: {query: query}) }
  end
end
end
