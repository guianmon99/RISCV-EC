
typedef struct {
    unsigned char r, g, b;
} RGBColor;

typedef struct {
    double h, s, l;
} HSLColor;

void RGBtoHSL(RGBColor rgb, HSLColor *hsl) {
    double r = rgb.r / 255.0;
    double g = rgb.g / 255.0;
    double b = rgb.b / 255.0;

    double max = (r > g) ? ((r > b) ? r : b) : ((g > b) ? g : b);
    double min = (r < g) ? ((r < b) ? r : b) : ((g < b) ? g : b);

    hsl->l = (max + min) / 2.0;

    if (max == min) {
        hsl->s = 0.0;
        hsl->h = 0.0; // undefined, but set to 0
    } else {
        double d = max - min;
        hsl->s = (hsl->l > 0.5) ? (d / (2.0 - max - min)) : (d / (max + min));

        if (max == r) {
            hsl->h = (g - b) / d + ((g < b) ? 6.0 : 0.0);
        } else if (max == g) {
            hsl->h = (b - r) / d + 2.0;
        } else {
            hsl->h = (r - g) / d + 4.0;
        }

        hsl->h /= 6.0;
    }
}

int main() {
    RGBColor rgb = {255, 0, 0};
    HSLColor hsl;

    RGBtoHSL(rgb, &hsl);

    return 0;
}