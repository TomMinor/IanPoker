#ifndef _POKERHANDS__H_
#define _POKERHANDS__H_

#include <vector>
#include "playingcard.h"
#include "player.h"
#include "cardStack.h"

/// @author Idris Miles
/// @version 1.0
/// @date 16/01/2015


/// @namespace hands encapsulates all methods used to find players best hand and ecide winner of Poker.
namespace hands
{
//-----------------------------------------------------------------------------------------------------------------------------
    // Evaluate hands methods
//-----------------------------------------------------------------------------------------------------------------------------
  /// @brief method to find spare cards not already being used in players hand
  /// @param [in] const Player
  /// @param [in] const cardStack
  /// @return [out] cardStack
    cardStack findSpareCards(const player &_player, const cardStack &_river);
    void addHighestCard(player &_player, const cardStack &_river);   // Used to add high cards to hand to complete hand, Does not effect score.
    void findPair(player &_player, const cardStack &_river);         // Finds highest pair in spare cards.
    void fillHand(player &_player, const cardStack &_river);         // Fills the rest of the hand and sets Kicker
    bool checkStraightHasFlush(player &_player, const cardStack &_river, const Suit::Value _suit, unsigned int _numSuit);
//-----------------------------------------------------------------------------------------------------------------------------
    void highestCard(player &_player, const cardStack &_river);      // SCORE 1-13    | 13 different valued high cards per suit, Ace is the highest.
    void pairs(player &_player, const cardStack &_river);            // SCORE 14-26   | 13 different valued pairs, Ace,Ace being the higest.
                                                                     // SCORE 27-104  | 78 different valued 2 pairs, Ace,Ace,King,King being the highest.
    void three(player &_player, const cardStack &_river);            // SCORE 105-117 | 13 different valued 3 of a Kinds, Ace,Ace,Ace being the highest.
    void straight(player &_player, const cardStack &_river);         // SCORE 118-127 | 10 different valued straights, 10-Ace being the highest valued.
    void flush(player &_player, const cardStack &_river);            // SCORE 128-140 | 13 different valued flushes, containing Ace being the highest value
    void fullHouse(player &_player, const cardStack &_river);        // SCORE 141-296 | 156 different valued full houses(13x12), Ace,Ace,Ace,King,King being the highest.
    void four(player &_player, const cardStack &_river);             // SCORE 297-309 | 13 different valued 4 of a kinds, Ace,Ace,Ace,Ace being the highest.
    void straightFlush(player &_player, const cardStack &_river);    // SCORE 310-319 | 10 different valued straight flushes, 10-Ace being the highest.
//-----------------------------------------------------------------------------------------------------------------------------
    // Decide winner methods
//-----------------------------------------------------------------------------------------------------------------------------
    void bestHand(player &_player, const cardStack &_river);
    std::vector<player> tieBreak(std::vector<player> &_livePlayers, const std::vector<int> _ID);
    std::vector<player> winner(std::vector<player> &_livePlayers, const cardStack &_river);

}

#endif
