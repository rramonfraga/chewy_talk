class MoviesIndex < Chewy::Index
  define_type Movie do
    field :title
    field :director
    field :description
  end
end
