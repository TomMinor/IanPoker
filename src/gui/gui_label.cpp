#include "include/gui/gui_label.h"

GUI::Label::Label(SDL_Renderer *_ren,
             SDL_Texture *_tex,
             const SDL_Rect &_rect,
             const GUI::Orientation &_orient,
             const SDL_Point &_origin,
             const int &_lifetime) : GUI::Element(_ren,_tex,_rect,_rect,_orient,_origin,_lifetime)

{
}
