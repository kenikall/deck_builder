class Card < ApplicationRecord
  belongs_to :deck

  def set_attributes(retreat_cost, types, attacks, weaknesses, resistances)
    @retreat_cost = retreat_cost
    @types = types
    @attacks = attacks
    @weaknesses = weaknesses
    @resistances = resistances
  end

    def retreat_cost
      @retreat_cost
    end

    def types
      @types
    end

    def attacks
      @attacks
    end

    def weaknesses
      @weaknesses
    end

    def resistances
      @resistances
    end
  # {
  #   "id": "xy7-54",
  #   "name": "Gardevoir",
  #   "nationalPokedexNumber": 282,
  #   "imageUrl": "https://s3.amazonaws.com/pokemontcg/xy7/54.png",
  #   "subtype": "Stage 2",
  #   "supertype": "Pokémon",
  #   "ability": {
  #     "name": "Bright Heal",
  #     "text": "Once during your turn (before your attack), you may heal 20 damage from each of your Pokémon."
  #   },
  #   "hp": "130",
  #   "retreatCost": [
  #     "Colorless",
  #     "Colorless"
  #   ],
  #   "number": "54",
  #   "artist": "TOKIYA",
  #   "rarity": "Rare Holo",
  #   "series": "XY",
  #   "set": "Ancient Origins",
  #   "setCode": "xy7",
  #   "types": [
  #     "Fairy"
  #   ],
  #   "attacks": [
  #     {
  #     "cost": [
  #       "Colorless",
  #       "Colorless",
  #       "Colorless"
  #     ],
  #     "name": "Telekinesis",
  #     "text": "This attack does 50 damage to 1 of your opponent's Pokémon. This attack's damage isn't affected by Weakness or Resistance.",
  #     "damage": "",
  #     "convertedEnergyCost": 3
  #     }
  #   ],
  #   "weaknesses": [
  #     {
  #       "type": "Metal",
  #       "value": "×2"
  #     }
  #   ],
  #   "resistances": [
  #     {
  #       "type": "Darkness",
  #       "value": "-20"
  #     }
end
