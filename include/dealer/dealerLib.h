#ifndef _DEALERLIB__H_
#define _DEALERLIB__H_

#include <map>
#include "player.h"
#include "deck.h"
#include "cardStack.h"
#include "comms/dealerIO.h"
#include "comms/SerialPort.h"
#include "gui/gui_dealergui.h"

enum commsRequest
{
  SENDBETLIMIT,
  SENDMONEY,
  SENDCARD,
  GETNAME,
  GETBET,
  WAIT
};

class dealerLib
{
public:
  dealerLib();
  ~dealerLib();
  void Betting();
  void bet();
  bool checkBoolArray(bool _array[])const;
  void addBetToPot(const int &_bet);
  int checkMaxBet();
  void dealHands();
  void dealFlop();
  void dealRiverTurn();
  void resetCards();
  void update();
  void init();
  void initPlayer(const int &_id);
  void clearTable();
  void removePlayer(std::vector<player>::iterator it);
  bool checkIfLost(player _player);
  void removeTheNoobs();


  bool callComms(commsRequest request);
  int getNumPlayers()const;
  std::vector<player> getLivePlayers()const;


private:
  cardStack m_communityCards;
  cardStack::iterator cardItr;
  int m_numPlayers;

  unsigned int m_pot;
  deck m_deck;
  GUI::DealerGUI m_dealerGui;
  Comms::PlayerDevices m_deviceMap;



  std::vector<player> m_table;
  std::vector<player> m_livePlayers;
};

#endif

