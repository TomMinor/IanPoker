#include "player.h"


player::player()
{
 
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
     //return fold;
   }
   
   
   input button(0);


   while(!quit)
   {
     bool exit = false;
     fold = false;
     
     uint16_t bet = _min;

     lcd.clear();

     lcd.print("Place bet:");

     delay(1000);

     while(!exit)
     {
      button.updateValue();

      lcd.setCursor(0,1);
   
      if      (button.right()&& bet <= (_max-10) && bet <= (m_money-10))  { bet+=10; fold = false;    }
      else if (button.up()   && bet < _max && bet < m_money)              { bet++; fold = false;      }
      else if (button.down() && bet > _min && bet <= m_money)             { bet--; fold = false;      }
      else if (button.left() && bet >= (_min+10) && bet < (m_money+10))   { bet-=10; fold = false;    }
      else if (button.left() && bet == _min)                              { fold = true;              }
      else if (button.down() && bet == _min)                              { fold = true;              }
      else if (button.select())                                           { exit = true;              }

      // have to use delay, not ideal
      delay(125);

      // print the bet or fold
      if(fold == true)       { lcd.print("FOLD");      }
      else if(fold == false) { lcd.print(String(bet)+"       "); } 
     }

     lcd.clear();
     
     if(fold == true)      { lcd.print("FOLD?:");                         }  
     else if(fold == false){ lcd.print("Place bet of "+String(bet))+"?";  }
      
     bool confirm = button.menuYesNo(1);

     if(confirm == true)
     {
        quit=true;
       if(fold == true)  { sendData(fold,1,"bool"); return 0; }
       else              { m_money = m_money - bet; return bet; }
    }
  }
}


void player::receiveMoney(uint16_t _money)
{
    m_money = m_money + _money;
}


void player::receiveCard( uint8_t _block, uint8_t _cards[] )
{
  bool received = false;
  m_display.createCustomChar();
  
  while(!received)
  {
    m_display.waitCards(); 

    m_cards[_block].suit = _cards[_block];
    m_cards[_block].rank = _cards[_block+1];
        
    if( m_cards[_block].suit == 0 || m_cards[_block].rank ) 
    { 
       lcd.clear();
       lcd.print( "No card received" ); 
       delay(1000);
    }
    else 
    {
       received = true;       
    }
      
  }
    
}


void player::setName()
{
    input button (0);
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
            button.updateValue();
            lcd.setCursor( currentPosX, currentPosY );
            
            if ( button.right() ) {
                currentPosX += 1;
                lcd.setCursor( currentPosX, currentPosY );
                index = 26;
                delay( 400 );
                ++nLetters;
            }
            else if ( button.up() ) {
                
                if ( alphabet[ index ] == 'Z'|| alphabet[ index ] == '\0' ) { index = 0; }
                else { index+=1; }
                lcd.print( alphabet[ index ] );
                tmp[ currentPosX ] = alphabet[ index ];
                delay( 400 );
                
            }
            else if ( button.down() ) {
                
                if ( alphabet[ index ] == 'A'|| alphabet[ index ] == '\0' ) { index = 25; }
                else { index-=1; }
                lcd.print( alphabet[ index ] );
                tmp[ currentPosX ] = alphabet[ index ];
                delay( 400 );
                
            }
            else if ( button.left() ) {
                
                currentPosX -= 1;
                lcd.setCursor(currentPosX,currentPosY);
                delay( 400 );
                
            }
            else if ( button.select() ) { select = true; }
            
        }
        
        for ( int i = 0; i < nLetters; ++i )
        {
            m_playerName[ i ] = tmp[ i ];
        }
        
        lcd.clear();
        lcd.print( "Confirm: "+ String( m_playerName ) );
        
        bool confirm = button.menuYesNo(1);
        
        if( confirm )
        {
            lcd.clear();
            lcd.print( "Welcome " + String( m_playerName ) + "!" );
            delay( 2000 );
            exit = true;
        }
        
    }
    
}


void player::resetPlayer(uint16_t _money, uint16_t _cardNum)
{
    m_money = _money;
    m_numCards = _cardNum;
}


void player::resetCards()
{
    for ( int i = 0; i < m_numCards; ++i )
    {
      m_cards[ i ].suit = 0;
      m_cards[ i ].rank = 0;
    }
}

void player::showPlayerData()
{    
  lcd.clear();
  
  //m_display.displayCard( uint8_t _rank, uint8_t _suit, int _x, int _y, int _nCard, int _totCards );
  
  
}



    
