#include <iostream>

#include "gui/gui_element.h"

#define SPEED 0.1f

GUI::Element::Element(SDL_Renderer *_ren,
                 SDL_Texture *_tex,
                 const SDL_Rect &_srcRect,
                 const SDL_Rect &_destRect,
                 const GUI::Orientation &_orient,
                 const SDL_Point &_origin,
                 const int &_lifetime) :
                m_ren(_ren),
                m_texture(_tex),
                m_srcRect(_srcRect),
                m_destRect(_destRect),
                m_orientation(_orient),

                m_origin(_origin),
                m_pointPrev(),
                m_pointDest(),
                m_progressAmount(0.9f),//so it updates once when it is created
                m_shouldKillSoon(false),
                m_shouldKillNow(false),
                m_isImmortal(_lifetime == 0 ? true : false),
                m_life(_lifetime)
{
}

GUI::Element::~Element()
{
}

void GUI::Element::setPos(const SDL_Point &_p, const bool &_updateRect)
{
    m_pointDest=_p;
    m_progressAmount=1.0;
    //pre-origin: m_destRect.x = _p.x;
    //pre-origin: m_destRect.y = _p.y;
    m_origin = _p;

    if (_updateRect)
    {
        updateRect();
    }
}

void GUI::Element::moveTo(const SDL_Point &_p)
{
    //SDL_Point current = m_origin;
    m_pointPrev = m_origin;
    m_pointDest = _p;
    m_progressAmount = 0.0f;
}

bool GUI::Element::update()
{
    if(m_progressAmount>=1.0f)//we have reached the destination
    {
        if(m_isImmortal)
        {
            return false;
        }
        if(m_life <= 0)
        {
            m_shouldKillNow = true;
            return true;
        }
        --m_life;
        return true;
    }

    m_progressAmount += SPEED;
    int moveX = m_pointDest.x - m_pointPrev.x;
    int moveY = m_pointDest.y - m_pointPrev.y;
    float multiplier = (1-cos(m_progressAmount*M_PI))/2.0f;
    //pre-origin: m_destRect.x = m_pointPrev.x + static_cast<int>(multiplier*moveX);
    //pre-origin: m_destRect.y = m_pointPrev.y + static_cast<int>(multiplier*moveY);
    m_origin.x = m_pointPrev.x + static_cast<int>(multiplier*moveX);
    m_origin.y = m_pointPrev.y + static_cast<int>(multiplier*moveY);

    //std::cout<<"origin - x: "<<m_origin.x<<" y: "<<m_origin.y<<"\n";

    updateRect();
    return true;
}

void GUI::Element::draw() const
{
    double angle = static_cast<double>(static_cast<int>(m_orientation)*90);
    SDL_Point centre = {m_origin.x - m_destRect.x, m_origin.y - m_destRect.y};

    SDL_RenderCopyEx(m_ren,m_texture,&m_srcRect,&m_destRect,-angle,&centre,SDL_FLIP_NONE);
}

unsigned int GUI::Element::getHeight() const
{
    if (m_orientation == BOTTOM || m_orientation == TOP)
    {
        return m_destRect.h;
    }
    return m_destRect.w;
}

unsigned int GUI::Element::getWidth() const
{
    if (m_orientation == BOTTOM || m_orientation == TOP)
    {
        return m_destRect.w;
    }
    return m_destRect.h;
}

SDL_Point GUI::Element::aligned(const GUI::Orientation &_orient)
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

SDL_Point GUI::Element::getCentre()
{
    int width, height;
    SDL_RenderGetLogicalSize(m_ren,&width,&height);
    SDL_Point temp = {width/2, height/2};
    return temp;
}

void GUI::Element::printRect()
{
    std::cout<<"Width: "<<m_destRect.w<<" Height: "<<m_destRect.h<<" X: "<<m_destRect.x<<" Y: "<<m_destRect.y<<"\n";
}

void GUI::Element::align(const Orientation &_orient, const bool &_instantly, const bool &_updateRect)
{
    if (_instantly)
    {
        setPos(aligned(_orient),_updateRect);
    }
    else
    {
        moveTo(aligned(_orient));
    }
}

void GUI::Element::centre(const bool &_instantly, const bool &_updateRect)
{
    if (_instantly)
    {
        setPos(getCentre(),_updateRect);
    }
    else
    {
        moveTo(getCentre());
    }
}
