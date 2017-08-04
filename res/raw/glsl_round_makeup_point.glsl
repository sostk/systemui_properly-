#ifdef GL_ES
precision highp float;
#endif
uniform float time;
uniform vec2 resolution;
uniform vec2 origin;
uniform float parameter1;
uniform float parameter2;

float makePoint(vec2 p,float fy,float sx,float sy, float delay){
    float temp = (time - delay) * fy;
    float sinvalue = sin(temp);
    float cosvalue = cos(temp);
    float tanvalue = sinvalue / cosvalue;
    float absSin = abs(sinvalue);
    float absCos = abs(cosvalue);

    if(tanvalue > 0.0)
    {
        float speed = sx * 2.9;
        p.x += sinvalue * speed;
        p.y -= 3.0 *(1.0 - absCos) * abs(speed) * sy;
        float len = length(p);
        float smooth_size = (1.0 - smoothstep(0.6, 1.0, (1.0 - absCos)));
        float result = smooth_size * 0.65 / len  - 0.7;
        if (result < 0.0) result = 0.0;
        return result;
    }else
    {
        float smooth_size = smoothstep(0.7, 1.0, absCos);
        float xDisRato = 0.0;
        if (absSin <= 0.5)
        {
            xDisRato = smoothstep(0.3, 0.5, absSin) * 0.5;
        } else
        {
            if (absSin <= 0.8)
            {
                xDisRato = (1.0 - smoothstep(0.0, 0.15, absSin - 0.5)) * 0.5;
            }
        }
        p.x += xDisRato * sx;
        p.y += (1.0 - absCos) * 7.5;
        float result = (0.4 + 0.25 * smooth_size) / length(p) - 0.7;
        if (result < 0.0) result = 0.0;
        return result;
    }
}

float donutBack(float len)
{
    float result = 0.03 / (len - 0.5) - 0.001;  //0.3 - 0.20 * abs(sin(0.2 * time))
    if (result < 0.0)   result = 0.0;
    return result;
}



float backCircle(float len)
{
    float col2 = 0.3 / abs(len - 0.5);
    return col2;
}

float smoothFunc(float len)
{
    float value = (1.0 - smoothstep(0.04, 0.053,  abs(len - 0.504)));
    return value;
}

float dfPoint(vec2 v, float k)
{
    //float d = length(v);
    float result = 0.6 / length(v);
    result = smoothstep(0.0, 1.0, (result - 7.5) / 7.5);
    result = pow(result, 5.0);
    if (v.y > v.x * k)  result = 0.0;
    return result;
}
void main( void ) {

    vec2 p=((gl_FragCoord.xy - origin) / resolution.x) * 2.0 - vec2(1.0, resolution.y/resolution.x);
    p.x += 0.01;
    p.y -= 0.35;
    p /= 1.05;
    gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);

    float   a= makePoint(   p,  0.35,  0.0936,  -0.53, 0.0);   //   0.52 * 0.18
            a+=makePoint(   p,  0.35,  -0.08,   0.63,  3.768);    //    0.4 * -0.2
            a+=makePoint(   p,  0.6,   -0.084,  -0.62, 0.0);   //    -0.4 * 0.21

    float   c= makePoint(   p,  0.8,   0.069,   0.8,   0.314);    //   0.3   0.23
            c+=makePoint(   p,  0.3,   -0.084,  -0.6,  -1.884);    //  0.4   -0.21
            c+=makePoint(   p,  0.59,  -0.084,   0.6,  -3.454);    //  0.4   -0.21

    float   f =makePoint(   p,  0.45,  -0.108,  -0.4,  0.0);    //  0.6    -0.18
            f+=makePoint(   p,  0.45,   0.1,    0.4,    4.71);       //   0.5     0.2
            f+=makePoint(   p,  0.6,   -0.115,  0.4,   0.0);      //   -0.5     0.23


    if (parameter2 > 0.5)   // 高端机型
    {
        a+=makePoint(   p,  0.6,   -0.102,   0.54, 3.14);   //   0.6   -0.17
        c+=makePoint(   p,  0.7,   -0.12,  -0.3,   7.85);     //  0.6     -0.2
        f+=makePoint(   p,  0.6,   0.096,   0.6,   95.77);     //    0.4     0.24
    }

    float len = length(p);
    float circle = backCircle(len) * 1.5;
    float t = 5.5;
    //下面的是粒子的效果
    float smooth_halo = -2.0 * (1.0 - smoothstep(0.4, 1.0, len * 2.0));

    float greenColor = smoothstep(0.0, 1.0, (circle + a * 0.3 + c * 0.3  + f * 0.66 - t)/ t);
    greenColor = pow(greenColor, 4.0);

    float blueColor = smoothstep(smooth_halo, 1.0, (a - t)/ t);
    blueColor = pow(blueColor, 4.0);

    float yellowColor = smoothstep(smooth_halo, 1.0, (c - t)/ t);
    yellowColor = pow(yellowColor, 4.0);

    float fColor = smoothstep(smooth_halo, 1.0, (f - t)/ t);
    fColor = pow(fColor, 4.0);      //0.6
    float smooth_f = 1.0;
    if (len < 0.6)
    {
        if (len < 0.6 && len > 0.5)
        {
            smooth_f = smoothstep(0.5, 0.6, len) * 0.5 + 0.5;
        } else     //  < 0.5
        {
            if (len < 0.5 && len > 0.3)
            {
                smooth_f = (1.0 - smoothstep(0.3, 0.5, len)) * 0.5 + 0.5;
            }
        }
    }

    gl_FragColor += vec4(             yellowColor * smooth_f                         + fColor * 0.8 * smooth_f,
                         greenColor + yellowColor * smooth_f + blueColor * smooth_f  + fColor * 0.5 * smooth_f,
                                                               blueColor * smooth_f  + fColor * 0.8 * smooth_f,
                         0.0) ;

    float backCircle2 = donutBack(len);
    backCircle2 = smoothstep(0.0, 0.9, backCircle2);
    gl_FragColor += vec4(0.0, backCircle2, 0.0, 0.0);

    gl_FragColor.a = max(gl_FragColor.r, max(gl_FragColor.g, gl_FragColor.b));

     //下面的代码是 白色的进度条
    float circle_white = smoothFunc(len);
    // 两个球
    float twoside_point1 = 0.0;
    float twoside_point2 = 0.0;

    vec4 white_color = vec4(0.8, 0.0, 0.8, 0.0);
    float lineK = tan(radians(parameter1 - 90.0));
    float radius_ratio = sin(radians(parameter1));
    float radius_ratio2 = sqrt(1.0 - radius_ratio * radius_ratio);
    if (parameter1 <= 90.0)  // 电量小于  50%
    {
        twoside_point1 = dfPoint(vec2(p.x + 0.504 * radius_ratio, p.y + 0.504 * radius_ratio2), -lineK);
        twoside_point2 = dfPoint(vec2(p.x - 0.504 * radius_ratio, p.y + 0.504 * radius_ratio2), lineK);
        if(p.y < 0.0)
        {
            if(abs(p.x) > len * radius_ratio)
            {
                gl_FragColor += white_color * circle_white;
            }
        } else
        {
            gl_FragColor += white_color * circle_white;
        }
    } else    // 电量大于  50%
    {
        if (parameter1 <= 180.0)
        {
            twoside_point1 = dfPoint(vec2(p.x - 0.504 * radius_ratio, p.y - 0.504 * radius_ratio2), lineK);
            twoside_point2 = dfPoint(vec2(p.x + 0.504 * radius_ratio, p.y - 0.504 * radius_ratio2), -lineK);
            if(p.y > 0.0)
            {
                if(abs(p.x) < len * radius_ratio)
                {
                    gl_FragColor += white_color * circle_white;
                }
            }
        } else
        {
            radius_ratio = 0.0;
            radius_ratio2 = 1.0;
            lineK = tan(radians(90.0));
            twoside_point1 = dfPoint(vec2(p.x, p.y - 0.504),  lineK);
            twoside_point2 = dfPoint(vec2(p.x, p.y - 0.504), -lineK);
        }
    }
    if (parameter1 > 180.0)
    {
        float pointSmooth = 1.0 - smoothstep(0.0, 0.8, (parameter1 - 180.0) / 18.0);
        gl_FragColor += white_color * (twoside_point1 + twoside_point2) * pointSmooth;
    } else
    {
        gl_FragColor += white_color * (twoside_point1 + twoside_point2);
    }

    gl_FragColor.a = max(gl_FragColor.r, max(gl_FragColor.g, gl_FragColor.b));
}