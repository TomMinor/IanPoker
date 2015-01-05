#include "include/card.h"

#define FLIPSPEED 0.2
#define CARDWIDTH 56

#define FullyFlipped    ( m_isFlipped && m_flippedAmount >= 1.0f )
#define FullyUnflipped  (!m_isFlipped && m_flippedAmount <= -1.0f)

Card::Card(SDL_Renderer *_ren,
           SDL_Texture *_tex,
           const SDL_Rect &_srcRect,
           const SDL_Rect &_destRect,
           const Orientation &_orient,
           const SDL_Point &_origin,
           const CardType &_type) :
            Element(_ren,_tex,_srcRect,_destRect,_orient,_origin),
            m_isFlipped(false),
            m_flippedAmount(-1.0f),
            m_xOffset(0),
            m_rank(_type.rank),
            m_suit(_type.suit),
            m_shouldBurn(false),
            m_burnLevel(0)
{
}

void Card::update()
{
    //-------------------------------------------------------------- Check 1: should the card burn?
    if(m_shouldBurn)
    {
        if(!FullyFlipped)
        {
            setFlipped(true);
            continueFlip();
            return;
        }
        else
        {
            m_xOffset=0;
            if(m_burnLevel < 24)
            {
                m_burnLevel++;
                m_srcRect.x=(m_burnLevel/2)*56;
            }
            else
            {
                m_shouldKill=true;
            }
            return;
        }
    }

    //-------------------------------------------------------------- Check 2: is the card midway between flips?
    else if(!FullyFlipped || !FullyUnflipped)
    {
        continueFlip();
    }

    Element::update();
}

void Card::continueFlip()
{
    float amount = m_flippedAmount + (m_isFlipped ? FLIPSPEED : -FLIPSPEED);
    m_flippedAmount = std::max(-1.0f, std::min(amount, 1.0f));//clamp

    if (m_flippedAmount > 0.0f)
    {
        //change to the flipped part of the sheet
        m_srcRect.x = 0;
        m_srcRect.y = m_srcRect.h*4;
    }
    else
    {
        m_srcRect.x = CARDWIDTH*static_cast<int>(m_rank);
        m_srcRect.y = m_srcRect.h*static_cast<int>(m_suit);
    }

    float xScale = (float)fabs(sin(m_flippedAmount*M_PI*0.5f));
    //std::cout<<"flippedAmount: "<<m_flippedAmount<<" xscale: "<<xScale<<"\n";
    m_destRect.w = static_cast<int>(CARDWIDTH * xScale);
    m_xOffset = CARDWIDTH/2 - static_cast<int>(CARDWIDTH * xScale * 0.5);
}

void Card::draw()
{
    m_destRect.x += m_xOffset;
    Element::draw();
    m_destRect.x -= m_xOffset;
}
