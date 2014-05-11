class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?
      @the_actor = Actor.find(2)
      @the_actor_movies = @the_actor.movies
      @the_actor_movies_time = @the_actor_movies.order("year DESC")
      @most_recent_movie_for_second_actor = @the_actor_movies_time.first.title
  end

  def question_2
    # Who directed the longest movie on the list?

    @movie_length = Movie.order("duration DESC")
    @movie_length_director = @movie_length.first.director
    @director_of_longest_movie = @movie_length_director.name
  end

  def question_3
    # Which director has the most movies on the list?
    # @director_list = Director.all
    # @list_of_counts = []

    # @director_list.each do |director|
    #   @director_count = director.movies.count
    #   @list_of_counts << @director_count
    # end
    #  @highest_movie_director_count = @list_of_counts.sort.last
 @director_list = Director.all
    @director = Director.first

    @director_list.each do |director|
      if director.movies.count > @director.movies.count
        @director = director
      end
    end

     @director_with_the_most_movies = @director.name
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    @actor_list = Actor.all
    @actor = Actor.first

    @actor_list.each do |actor|
      if actor.movies.count > @actor.movies.count
        @actor = actor
      end
    end

    @actor_with_the_most_movies = @actor.name
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
