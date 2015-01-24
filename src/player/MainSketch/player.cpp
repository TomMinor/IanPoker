#include "player.h"


player::player()
{
  //hardcoded woop
  m_button.setPin(0);
  
  m_money = 0;
  
  m_numCards = 0;
  
}

player::~player()
{

}

uint16_t player::placeBet(uint16_t _max, uint16_t _min)
{
   bool quit = false;
   bool fold = false;
   
   //check if they have enough money, shouldnt happen.
   if(m_money < _min)
   {
     return BET::FOLD;  
   }
   
   while(!quit)
   {
     bool exit = false;
     fold = false;
     bool showData = false;
     
     uint16_t bet = _min;

     lcd.clear();

     lcd.print("Place bet:");

     delay(1000);

     while(!exit)
     {
      m_button.updateValue();
  
      if      (m_button.right())                                                  { lcd.clear();lcd.print("Place bet:");showData = false;    }
      else if (m_button.left())                                                   { this->showPlayerData(); showData = true;                 }
      else if (m_button.up()   && bet < _max && bet < m_money && showData==false) { bet++; fold = false;                                     }
      else if (m_button.down() && bet > _min && bet <= m_money && showData==false){ bet--; fold = false;                                     }
      else if (m_button.down() && bet == _min && showData==false)                 { fold = true;                                             }
      else if (m_button.select() && showData == false)                            { exit = true;                                             }

      // have to use delay, not ideal
      delay(125);

      // print the bet or fold
      lcd.setCursor(0,1);
      if(fold == true && showData == false)       { lcd.print("FOLD");      }
      else if(fold == false && showData == false) { lcd.print(String(bet)+"       "); } 
     }

     lcd.clear();
     
     if(fold == true)      { lcd.print("FOLD?:");                         }  
     else if(fold == false){ lcd.print("Confirm: "+String(bet))+"?";  }
      
     bool confirm = m_button.menuYesNo(1);

     if(confirm == true)
     {
       quit=true;
       if(fold == true)  { return BET::FOLD; }
       else              { m_money = m_money - bet; return bet; }
    }
  }
}


void player::receiveMoney(uint16_t _money)
{
    m_money = m_money + _money;
    this->winner();
}

void player::setMoney(uint16_t _money)
{
  m_money = _money;
}

void player::receiveCard( uint8_t _block, uint8_t _cards[] )
{
  m_numCards++;
  //m_display.waitCards();
  
  uint8_t tmp = _block*2; 

  m_cards[_block].rank = _cards[tmp];
  m_cards[_block].suit = _cards[tmp+1];
}


void player::setName()
{
    
    bool exit = false;
    
    while( !exit )
    {
        char alphabet [ 27 ] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int index = 26;
        int currentPosX = 0;
        int currentPosY = 1;
        int nLetters = 1;
        char tmp[ 15 ];
        
        lcd.clear();
        bool select = false;
        
        while( !select )
        {
            lcd.setCursor( 0, 0 );
            lcd.print( "Enter Name:" );
            m_button.updateValue();
            lcd.setCursor( currentPosX, currentPosY );
            
            if ( m_button.right() ) {
                currentPosX += 1;
                lcd.setCursor( currentPosX, currentPosY );
                index = 26;
                delay( 400 );
                ++nLetters;
            }
            else if ( m_button.up() ) {
                
                if ( alphabet[ index ] == 'Z'|| alphabet[ index ] == '\0' ) { index = 0; }
                else { index+=1; }
                lcd.print( alphabet[ index ] );
                tmp[ currentPosX ] = alphabet[ index ];
                delay( 400 );
                
            }
            else if ( m_button.down() ) {
                
                if ( alphabet[ index ] == 'A'|| alphabet[ index ] == '\0' ) { index = 25; }
                else { index-=1; }
                lcd.print( alphabet[ index ] );
                tmp[ currentPosX ] = alphabet[ index ];
                delay( 400 );
                
            }
            else if ( m_button.left() ) {
                
                currentPosX -= 1;
                lcd.setCursor(currentPosX,currentPosY);
                delay( 400 );
                
            }
            else if ( m_button.select() ) { select = true; }
            
        }
        
        for ( int i = 0; i < nLetters; ++i )
        {
            m_playerName[ i ] = tmp[ i ];
        }
        
        lcd.clear();
        lcd.print( "Confirm: "+ String( m_playerName ) );
        
        bool confirm = m_button.menuYesNo(1);
        
        if( confirm )
        {
            lcd.clear();
            lcd.print( "Welcome " + String( m_playerName ) + "!" );
            delay( 2000 );
            exit = true;
        }
        
    }
    
}


void player::resetPlayer(uint16_t _money)
{
    m_money = _money;
    this->resetCards();
}


void player::resetCards()
{
    for ( int i = 0; i < m_numCards; ++i )
    {
      m_cards[ i ].suit = 0;
      m_cards[ i ].rank = 0;
    }
    
    m_numCards = 0;
}

void player::showPlayerData()
{    
  lcd.clear(); 
  lcd.print("Cards: ");
  for(int i = 0; i < m_numCards; ++i)
  {
    m_display.displayCard( m_cards[i].rank, m_cards[i].suit, 7+(3*i), 0, i+1, m_numCards );
  }
  
  lcd.setCursor(0,1);
  lcd.print("Money: "+String(m_money)); 
}

void player::joinGame()
{
  bool play = false;
  
  lcd.clear();
  
  lcd.print("Join game?:");
   
  play = m_button.menuYesNo(1);
  
  if(play == true)
  {
    return;
  }
  else if(play == false)
  {
    while(true)
    {
      lcd.setCursor(0,0);
      lcd.print("Hit reset    ");
      lcd.setCursor(0,1);
      lcd.print("to try again.   ");
    }
  }
}

void player::winner()
{
 
  lcd.clear();
  
  lcd.print("Winner Winner!");
  
  lcd.setCursor(0,1);
  
  lcd.print("Chicken Dinner!");
  
  delay(3000);
}
    
bool player::checkFirstCard()
{
  if(m_cards[0].suit == 0 || m_cards[0].rank == 0)
  {
    return false;
  }
  else 
  {
    return true;
  }
}

    
