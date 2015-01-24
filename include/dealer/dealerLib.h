#ifndef _DEALERLIB__H_
#define _DEALERLIB__H_

#include "player.h"
#include "deck.h"
#include "cardStack.h"
#include "comms.h"

enum commsRequest
{
  sendBetLimits,
  sendMoney,
  sendCard,
  getName,
  getBet,
  wait
};

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
  void update();
  int checkMaxBet();
  void initialisePlayers();
  void clearTable();
  void removePlayer(std::vector<player>::iterator it);
  bool checkIfLost(player _player);
  void removeTheNoobs();
//  void addBetsToPot(); probs dont need this anymore, just hardcoded it into Betting()

  bool callComms(commsRequest request);
  int getNumPlayers()const;
  std::vector<player> getLivePlayers()const;


private:
  cardStack m_communityCards;
  cardStack::iterator cardItr;
  int m_numPlayers;
  int m_pot;

  std::vector<player> m_table;
  std::vector<player> m_livePlayers;
};

#endif

