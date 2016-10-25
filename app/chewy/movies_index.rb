class SearchesIndex < Chewy::Index
  define_type Movie do
    field :title
    field :director
    field :description
  end

  def self.search(query)
    filter{ q(query_string: {query: query}) }
  end
end
