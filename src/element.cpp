#include "element.h"
#include <iostream>

#define SPEED 0.1

Element::Element(SDL_Renderer *_ren,
                 SDL_Texture *_tex,
                 const SDL_Rect &_srcRect,
                 const SDL_Rect &_destRect,
                 const Orientation &_orient,
                 const SDL_Point &_origin,
                 const int &_lifetime) :
                m_ren(_ren),
                m_texture(_tex),
                m_srcRect(_srcRect),
                m_destRect(_destRect),
                m_orientation(_orient),

                m_origin(_origin),
                m_shouldKill(false),
                m_pointPrev(),
                m_pointDest(),
                m_progressAmount(0.9f),
                m_life(_lifetime)
{
}

Element::~Element()
{
    std::cout<<"element destructor called\n";
}

void Element::setPos(const SDL_Point &_p)
{
    m_pointDest=_p;
    m_progressAmount=1.0;
    //pre-origin: m_destRect.x = _p.x;
    //pre-origin: m_destRect.y = _p.y;
    m_origin = _p;
}

void Element::moveTo(const SDL_Point &_p)
{
    SDL_Point current = m_origin;
    m_pointPrev = current;
    m_pointDest = _p;
    m_progressAmount = 0.0f;
}

void Element::update()
{
    if(m_progressAmount>=1.0f)//we have reached the destination
    {
        if (m_life != 0)//if the lifetime is not infinite
        {
            m_life = m_life == 1 ? -1 : m_life-1;//skip 0 so we don't accidentally make it immortal
        }

        return;
    }

    m_progressAmount += SPEED;
    int moveX = m_pointDest.x - m_pointPrev.x;
    int moveY = m_pointDest.y - m_pointPrev.y;
    float multiplier = (1-cos(m_progressAmount*M_PI))/2.0f;
    //pre-origin: m_destRect.x = m_pointPrev.x + static_cast<int>(multiplier*moveX);
    //pre-origin: m_destRect.y = m_pointPrev.y + static_cast<int>(multiplier*moveY);
    m_origin.x = m_pointPrev.x + static_cast<int>(multiplier*moveX);
    m_origin.y = m_pointPrev.y + static_cast<int>(multiplier*moveY);

    m_destRect.x = m_origin.x - m_destRect.w/2;
    m_destRect.y = m_origin.y - m_destRect.h/2;

    /*if (m_orientation == RIGHT)
    {
        m_destRect.x += (m_destRect.h - m_destRect.w)/2;
        m_destRect.y += (m_destRect.w - m_destRect.h)/2;
    }
    if (m_orientation == LEFT)
    {
        m_destRect.x -= (m_destRect.h - m_destRect.w)/2;
        m_destRect.y -= (m_destRect.w - m_destRect.h)/2;
    }*/

    //std::cout<<"rect x: "<<m_destRect.x<<" rect y: "<<m_destRect.y<<"\n";
    //std::cout<<"origin x: "<<m_origin.x<<" origin y: "<<m_origin.y<<"\n";
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
    //std::cout<<"width: "<<m_destRect.w<<"\n";
    SDL_Point centre = {m_origin.x - m_destRect.x, m_origin.y - m_destRect.y};

    SDL_RenderCopyEx(m_ren,m_texture,&m_srcRect,&m_destRect,-angle,&centre,SDL_FLIP_NONE);
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

SDL_Point Element::aligned(const Orientation &_orient)
{
    SDL_Point temp = m_origin;
    int width, height;
    SDL_RenderGetLogicalSize(m_ren,&width,&height);

    switch (_orient)
    {
        case BOTTOM : temp.y = height - getHeight()/2; break;
        case RIGHT : temp.x = width - getWidth()/2; break;
        case TOP : temp.y = getHeight()/2; break;
        case LEFT : temp.x = getWidth()/2;
    }
    return temp;
}
