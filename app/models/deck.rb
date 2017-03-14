class Deck < ApplicationRecord
  def complete?
    cards.length >= 60 ? true : false
  end

  def add_cards(card, number=1)
    number.times do card
      entry = Card.create(deck_id: id,
                          card_id: card.id,
                          name: card.name,
                          national_pokedex_number: card.national_pokedex_number,
                          image_url: card.image_url,
                          subtype: card.subtype,
                          supertype: card.supertype,
                          hp: card.hp,
                          number: card.number,
                          artist: card.artist,
                          rarity: card.rarity,
                          series: card.series,
                          set: card.set,
                          set_code: card.set_code
                         )
      entry.set_attributes(card.retreat_cost,
                           card.types,
                           card.attacks,
                           card.weaknesses,
                           card.resistances)
    end
    complete?
  end

  def name
    'example name'
  end

  def cards
    Card.where(deck_id: id)
  end

  def wins
    0
  end

  def losses
    0
  end

  def basic_pokemon
    basic_pokemon = []
    cards.each do |card|
      if card.subtype == 'Stage 1'
        basic_pokemon << card
      end
    end
    basic_pokemon
  end

  def evolved_pokemon
    evolved_pokemon = []
    cards.each do |card|
      if card.subtype != 'Stage 1' && card.supertype == 'Pokémon'
        evolved_pokemon << card
      end
    end
    evolved_pokemon
  end

  def trainers
    trainers = []
    cards.each do |card|
      if card.supertype == 'Trainer'
        trainers << card
      end
    end
    trainers
  end

  def type
    types = {}
    types.default = 0

    cards.each do |card|
      card.types.each{|type|types[type]+=1} if card.types
    end
    ret = ''
    types.max_by{|type, qty| ret = type}
    ret
  end

  def energy
    energy = {}
    energy.default = [0,'']
    cards.each do |card|
      if card.supertype == 'Energy'
        energy[card.name] = [energy[card.name][0] += 1, card.image_url]
      end
    end
    energy
  end
end
