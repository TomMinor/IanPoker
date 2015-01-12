#ifndef _DEALERLIB__H_
#define _DEALERLIB__H_

#include "player.h"
#include "deck.h"
#include "cardStack.h"

class dealerLib
{
public:
  dealerLib();
  ~dealerLib();
  void Betting();
  void dealHands(deck _pack);
  void dealFlop(deck _pack);
  void dealRiverTurn(deck _pack);
  void resetCards();//player.popHole card x2 and thn set cards

private:
  cardStack m_communityCards;
  cardStack::iterator cardItr;

  std::vector<player> m_table;
};

#endif
