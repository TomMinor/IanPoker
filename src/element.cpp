#include "element.h"

#define SPEED 0.1

Element::Element(SDL_Renderer *_ren,
                 SDL_Texture *_tex,
                 const SDL_Rect &_srcRect,
                 const SDL_Rect &_destRect,
                 const Orientation &_orient) :
                m_ren(_ren),
                m_texture(_tex),
                m_srcRect(_srcRect),
                m_destRect(_destRect),
                m_orientation(_orient),

                m_pointPrev(),
                m_pointDest(),
                m_progressAmount(1.0f)
{
}

void Element::setPos(const SDL_Point &_p)
{
    m_pointDest=_p;
    m_progressAmount=1.0;
    m_destRect.x = _p.x;
    m_destRect.y = _p.y;
}

void Element::moveTo(const SDL_Point &_p)
{
    SDL_Point current = {m_destRect.x, m_destRect.y};
    m_pointPrev = current;
    m_pointDest = _p;
    m_progressAmount = 0.0f;
}

void Element::update()
{
    if(m_progressAmount>=1.0f)//we have already reached the destination
    {
        return;
    }
    m_progressAmount += SPEED;
    int moveX = m_pointDest.x - m_pointPrev.x;
    int moveY = m_pointDest.y - m_pointPrev.y;
    float multiplier = (1-cos(m_progressAmount*M_PI))/2.0f;
    m_destRect.x = m_pointPrev.x + static_cast<int>(multiplier*moveX);
    m_destRect.y = m_pointPrev.y + static_cast<int>(multiplier*moveY);
}

void Element::draw() const
{
    //wow this bit is bloody useless huh
    //m_destRect.x += static_cast<int>(m_destination.x-m_destRect.x*0.1f);
    //m_destRect.y += static_cast<int>(m_destination.y-m_destRect.y*0.1f);
    //SDL_Point centre;
    //SDL_RenderGetLogicalSize(m_ren,&centre.x,&centre.y);
    //centre.x/=2;
    //centre.y/=2;
    //centre.x = m_destRect.x;
    //centre.y = m_destRect.y;

    double angle = static_cast<double>(static_cast<int>(m_orientation)*90);

    SDL_RenderCopyEx(m_ren,m_texture,&m_srcRect,&m_destRect,angle,NULL,SDL_FLIP_NONE);
}

int Element::getHeight() const
{
    if (m_orientation == BOTTOM || m_orientation == TOP)
    {
        return m_destRect.h;
    }
    return m_destRect.w;
}

int Element::getWidth() const
{
    if (m_orientation == BOTTOM || m_orientation == TOP)
    {
        return m_destRect.w;
    }
    return m_destRect.h;
}