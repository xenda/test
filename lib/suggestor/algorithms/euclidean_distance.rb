module Suggestor
  module Algorithms

    # The euclidean distance will compare two structures of 
    # data, and map them on a chart, each their related element
    # on each axis. 

    # For example, if we are dealing with user and movies, related
    # by user reviews of each movie, each couple of shared movie
    # rating will be used as the axis (LOTR on one, and The Matrix on other)

    # The user ratings will be used to position them on the chart. Thus,
    # if a user review LOTR as 1 and The Matrix with 5, it will position it 
    # on [1,5].

    # The closest they are, the more similar their tastes are.
    # More info at: 
    #   http://en.wikipedia.org/wiki/Euclidean_metric
    #   http://en.wikipedia.org/wiki/Distance_correlation

    class EuclideanDistance

      include RecommendationAlgorithm

      def similarity_score(first, second)
        return 0.0 if @collection.nothing_shared?(first, second)
        @collection.inverse_of_squares(first, second)
      end

    end
    
  end
end