typedef signed char i8;
typedef unsigned short u16;

enum { BGPAL_TILESET = 6 };

union WeatherGradient
{
    u16 lines[320];
    u16 fireGradient[8][0x40];
};

extern u16 gPal[0x200];
extern union WeatherGradient gWeatherGradient;

extern i8 FlamesRecolorModifiers[3];

static inline int clamp_color(int c)
{
    return c > 31 ? 31 : (c < 0 ? 0 : c);
}

void NuApplyFlamesWeatherGradient(void)
{
    int i, j, k;

    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 0x10; ++j)
        {
            int color = gPal[0x10 * (BGPAL_TILESET+1+i) + j];

            int r = (color >> 0)  & 0x1F;
            int g = (color >> 5)  & 0x1F;
            int b = (color >> 10) & 0x1F;

            for (k = 0; k < 8; ++k)
            {
                r = clamp_color(r + FlamesRecolorModifiers[0]);
                g = clamp_color(g + FlamesRecolorModifiers[1]);
                b = clamp_color(b + FlamesRecolorModifiers[2]);

                gWeatherGradient.fireGradient[k][0x10*i + j] = (b << 10) + (g << 5) + r;
            }
        }
    }
}
