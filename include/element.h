#ifndef ELEMENT_H
#define ELEMENT_H

#include <SDL.h>
#include <math.h>

typedef enum
{
    BOTTOM,
    RIGHT,
    TOP,
    LEFT
} Orientation;

class Element
{
public:
    Element(SDL_Renderer *_ren,
            SDL_Texture *_tex,
            const SDL_Rect &_srcRect,
            const SDL_Rect &_destRect,
            const Orientation &_orient,
            const SDL_Point &_origin);
    virtual ~Element();
    void setPos(const SDL_Point &_p);//move to this point instantly
    inline SDL_Point getPos() {return m_origin;}
    void moveTo(const SDL_Point &_p);//move to this point with cosine interpolation
    virtual void update();
    virtual void draw() const;
    int getHeight() const;//the height the element takes up on screen, taking rotation into account
    int getWidth() const;//the width the element takes up on screen, taking rotation into account
    inline void kill() {m_shouldKill = true;}
    inline bool shouldKill() const {return m_shouldKill && m_progressAmount >= 1.0f;}
    SDL_Point aligned(const Orientation &);//returns the point the element should move to to align with the specified edge of the screen

protected:
    //stuff SDL needs to know
    SDL_Renderer *m_ren;
    SDL_Texture *m_texture;
    SDL_Rect m_srcRect;
    SDL_Rect m_destRect;
    Orientation m_orientation;

    //movement stuff
    SDL_Point m_origin;
    SDL_Point m_pointPrev;
    SDL_Point m_pointDest;
    float m_progressAmount;

    bool m_shouldKill;//if true then the object will be deleted on the next update()
};

#endif // ELEMENT_H
