class DeckController < ApplicationController

  def index
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
  end

  def show
    @deck = Deck.find(params[:id]).assemble
  end
end
