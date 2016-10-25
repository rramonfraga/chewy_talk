class MoviesIndex < Chewy::Index
  define_type Movie do
    field :title, :director, :description # multiple fields without additional options
  end
end
