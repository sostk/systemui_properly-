.class public Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;
.super Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.source "ProgressBlurRender.java"


# static fields
.field private static final BLUR_WORK_SIZE:I = 0x10

.field public static final FAST_BLUR:Ljava/lang/String; = "fast_blur"

.field private static TEXTURE_FORMAT:I

.field private static scaleShader:Ljava/lang/String;


# instance fields
.field private mNotSupportMemoryBarrier:Z

.field protected mProgramH:I

.field protected mProgramS:I

.field protected mProgramV:I

.field private mSize:[I

.field protected mUniformRadiusH:I

.field protected mUniformRadiusS:I

.field protected mUniformRadiusV:I

.field private mUniformTextureS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const v0, 0x881a

    .line 19
    sput v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "#version 310 es \nprecision highp float; \nuniform sampler2D uInputImage; \nuniform int uRadius; \nlayout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getPixelFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", binding = 0) writeonly uniform highp image2D uOutputImage; \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "layout (local_size_x = 1, local_size_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", local_size_z = 1) in;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ivec2 offset(int value, int base) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    return ivec2(value, base);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "vec3 imageFetch(ivec2 pos, ivec2 imageSize) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "     return texture(uInputImage, vec2(float(pos.x)/float(imageSize.x), float(pos.y)/float(imageSize.y))).rgb;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "void boxBlurH() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    ivec2 imageSize = ivec2(imageSize(uOutputImage));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    int size =  int(imageSize.x);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    int base =  int(gl_GlobalInvocationID.y);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    int radius = min(uRadius, size);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    float weight = 1.0/float(radius*2+1);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    vec3 left  = imageFetch(offset(0, base), imageSize);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    vec3 right = imageFetch(offset(size-1, base), imageSize);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    vec3 color = left*float(radius+1);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    for(int i=0; i<radius; i++) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        color += imageFetch(offset(i, base), imageSize);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    for(int i=0; i<=radius; i++) { \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        color += imageFetch(offset(i+radius, base), imageSize) - left;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    for(int i=radius+1; i<size-radius; i++) { \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        color += imageFetch(offset(i+radius, base), imageSize) - \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "                 imageFetch(offset(i-radius-1, base),imageSize);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    for(int i=size-radius; i<size; i++) { \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        color += right - imageFetch(offset(i-radius-1, base), imageSize);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "void main() { \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    boxBlurH();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->scaleShader:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/4 v1, 0x3

    .line 21
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    .line 22
    iput v2, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    .line 24
    iput v2, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    .line 26
    iput v2, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    .line 32
    invoke-direct {p0, v2}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getBlurShader(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createComputeProgram(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    .line 33
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    const-string/jumbo v2, "uRadius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusH:I

    .line 35
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getBlurShader(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createComputeProgram(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    .line 36
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    const-string/jumbo v2, "uRadius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusV:I

    .line 38
    sget-object v1, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->scaleShader:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createComputeProgram(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    .line 39
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    const-string/jumbo v2, "uInputImage"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformTextureS:I

    .line 40
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    const-string/jumbo v2, "uRadius"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusS:I

    const-string/jumbo v1, "fast_blur"

    .line 42
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mKey:Ljava/lang/String;

    const/16 v1, 0x1f01

    .line 43
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "GPUType":Ljava/lang/String;
    const-string/jumbo v1, "Adreno (TM) 430"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mNotSupportMemoryBarrier:Z

    .line 45
    return-void
.end method

.method private blurH(Lcom/meizu/common/renderer/effect/texture/Texture;Lcom/meizu/common/renderer/effect/texture/Texture;I)V
    .locals 8
    .param p1, "input"    # Lcom/meizu/common/renderer/effect/texture/Texture;
    .param p2, "output"    # Lcom/meizu/common/renderer/effect/texture/Texture;
    .param p3, "radius"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 93
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v1, 0x100

    .line 94
    invoke-static {v1}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    const v1, 0x84c0

    .line 95
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 96
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformTextureS:I

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 98
    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusS:I

    invoke-static {v1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 99
    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v1

    const v5, 0x88b9

    sget v6, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    move v2, v0

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v6}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    .line 100
    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/RendererUtils;->nextMultipleN(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v7, v0, v7}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glDispatchCompute(III)V

    const/16 v0, 0x20

    .line 101
    invoke-static {v0}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    .line 102
    return-void
.end method

.method private boxesForGauss(FI)V
    .locals 12
    .param p1, "radius"    # F
    .param p2, "n"    # I

    .prologue
    .line 105
    iget-object v7, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    array-length v7, v7

    if-ne v7, p2, :cond_0

    .line 108
    :goto_0
    move v3, p1

    .line 109
    .local v3, "sigma":F
    float-to-double v8, v3

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    mul-double/2addr v8, v10

    float-to-double v10, v3

    mul-double/2addr v8, v10

    int-to-double v10, p2

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 110
    .local v4, "wIdeal":F
    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 111
    .local v5, "wl":I
    rem-int/lit8 v7, v5, 0x2

    if-eqz v7, :cond_1

    .line 112
    :goto_1
    add-int/lit8 v6, v5, 0x2

    .local v6, "wu":I
    const/high16 v7, 0x41400000    # 12.0f

    .line 113
    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    mul-int v8, p2, v5

    mul-int/2addr v8, v5

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, p2, 0x4

    mul-int/2addr v8, v5

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, p2, 0x3

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-int/lit8 v8, v5, -0x4

    add-int/lit8 v8, v8, -0x4

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 114
    .local v2, "mIdeal":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .local v1, "m":I
    const/4 v0, 0x0

    .line 115
    .local v0, "i":I
    :goto_2
    if-lt v0, p2, :cond_2

    .line 116
    return-void

    .line 106
    .end local v0    # "i":I
    .end local v1    # "m":I
    .end local v2    # "mIdeal":F
    .end local v3    # "sigma":F
    .end local v4    # "wIdeal":F
    .end local v5    # "wl":I
    .end local v6    # "wu":I
    :cond_0
    new-array v7, p2, [I

    iput-object v7, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    goto :goto_0

    .line 111
    .restart local v3    # "sigma":F
    .restart local v4    # "wIdeal":F
    .restart local v5    # "wl":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 115
    .restart local v0    # "i":I
    .restart local v1    # "m":I
    .restart local v2    # "mIdeal":F
    .restart local v6    # "wu":I
    :cond_2
    iget-object v8, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    if-lt v0, v1, :cond_3

    move v7, v6

    :goto_3
    aput v7, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v7, v5

    goto :goto_3
.end method

.method private getBlurShader(Z)Ljava/lang/String;
    .locals 5
    .param p1, "vertical"    # Z

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "#version 310 es \nprecision highp float; \nuniform int uRadius; \nlayout("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getPixelFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", binding = 0) readonly uniform highp image2D uInputImage; \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "layout("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getPixelFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", binding = 1) writeonly uniform highp image2D uOutputImage; \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "layout (local_size_x = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", local_size_y = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", local_size_z = 1) in;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ivec2 offset(int value, int base) {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ? ivec2(base, value) : ivec2(value, base);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "void boxBlur() {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    int size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ? int(imageSize(uOutputImage).y) : int(imageSize(uOutputImage).x);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    int base = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ? int(gl_GlobalInvocationID.x) : int(gl_GlobalInvocationID.y);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    int radius = min(uRadius, size);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    float weight = 1.0/float(radius*2+1);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    vec3 left  = imageLoad(uInputImage, offset(0, base)).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    vec3 right = imageLoad(uInputImage, offset(size-1, base)).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    vec3 color = left*float(radius+1);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    for(int i=0; i<radius; i++) {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        color += imageLoad(uInputImage, offset(i, base)).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    for(int i=0; i<=radius; i++) { \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        color += imageLoad(uInputImage, offset(i+radius, base)).rgb - left;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    for(int i=radius+1; i<size-radius; i++) { \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        color += imageLoad(uInputImage, offset(i+radius, base)).rgb - \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "                 imageLoad(uInputImage, offset(i-radius-1, base)).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    for(int i=size-radius; i<size; i++) { \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        color += right - imageLoad(uInputImage, offset(i-radius-1, base)).rgb;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    }\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "void main() { \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    boxBlur();\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "shader":Ljava/lang/String;
    return-object v0

    .end local v0    # "shader":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 145
    goto/16 :goto_0

    :cond_1
    move v3, v2

    goto/16 :goto_1
.end method

.method public static getInstance(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;
    .locals 2
    .param p0, "canvas"    # Lcom/meizu/common/renderer/effect/GLCanvas;

    .prologue
    const-string/jumbo v1, "fast_blur"

    .line 48
    invoke-interface {p0, v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    .line 49
    .local v0, "render":Lcom/meizu/common/renderer/effect/render/Render;
    if-eqz v0, :cond_0

    .line 53
    :goto_0
    check-cast v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;

    .end local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    return-object v0

    .line 50
    .restart local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    :cond_0
    new-instance v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;

    .end local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    invoke-direct {v0, p0}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 51
    .restart local v0    # "render":Lcom/meizu/common/renderer/effect/render/Render;
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    goto :goto_0
.end method

.method private static getPixelFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    sget v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const v1, 0x8814

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "rgba16f"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "rgba32f"

    goto :goto_0
.end method

.method public static glTexStorage2D(IIIII)V
    .locals 0
    .param p0, "target"    # I
    .param p1, "levels"    # I
    .param p2, "internalformat"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 132
    invoke-static {p0, p1, p2, p3, p4}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glTexStorage2D(IIIII)V

    .line 133
    return-void
.end method


# virtual methods
.method public blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .locals 17
    .param p1, "input"    # Lcom/meizu/common/renderer/effect/texture/Texture;
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I

    .prologue
    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->skipBlur()Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getScale()F

    move-result v14

    .line 60
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getRadius()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v3}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getLevel()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v13, v2

    .line 61
    .local v13, "radius":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getPassCount()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 62
    .local v12, "passCount":I
    move/from16 v0, p2

    int-to-float v2, v0

    mul-float/2addr v2, v14

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 63
    .local v16, "width":I
    move/from16 v0, p3

    int-to-float v2, v0

    mul-float/2addr v2, v14

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 64
    .local v9, "height":I
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v2

    sget v3, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v9, v3, v4}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v15

    .line 65
    .local v15, "tmpTexture":Lcom/meizu/common/renderer/effect/texture/Texture;
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v2

    sget v3, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v9, v3, v4}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v11

    .line 66
    .local v11, "outputTexture":Lcom/meizu/common/renderer/effect/texture/Texture;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v15, v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    .line 67
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v11, v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    const/4 v2, 0x0

    .line 68
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->boxesForGauss(FI)V

    const/4 v10, 0x0

    .line 69
    .local v10, "i":I
    :goto_0
    if-lt v10, v12, :cond_1

    .line 88
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v15, v3}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    .line 89
    invoke-static {v11}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->newInstance(Ljava/lang/Object;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v2

    return-object v2

    .end local v9    # "height":I
    .end local v10    # "i":I
    .end local v11    # "outputTexture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .end local v12    # "passCount":I
    .end local v13    # "radius":I
    .end local v14    # "scale":F
    .end local v15    # "tmpTexture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .end local v16    # "width":I
    :cond_0
    const/4 v2, 0x0

    .line 58
    return-object v2

    .line 70
    .restart local v9    # "height":I
    .restart local v10    # "i":I
    .restart local v11    # "outputTexture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .restart local v12    # "passCount":I
    .restart local v13    # "radius":I
    .restart local v14    # "scale":F
    .restart local v15    # "tmpTexture":Lcom/meizu/common/renderer/effect/texture/Texture;
    .restart local v16    # "width":I
    :cond_1
    if-eqz v10, :cond_2

    .line 73
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v2, 0x0

    .line 74
    invoke-virtual {v11}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x88b8

    sget v8, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v15}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x88b9

    sget v8, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    .line 76
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusH:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    aget v3, v3, v10

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 v2, 0x1

    const/16 v3, 0x10

    .line 77
    invoke-static {v9, v3}, Lcom/meizu/common/renderer/RendererUtils;->nextMultipleN(II)I

    move-result v3

    div-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glDispatchCompute(III)V

    const/16 v2, 0x20

    .line 78
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    .line 80
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mNotSupportMemoryBarrier:Z

    if-nez v2, :cond_3

    .line 81
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v15}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x88b8

    sget v8, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v11}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const v7, 0x88b9

    sget v8, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    .line 84
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusV:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    aget v3, v3, v10

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v2, 0x10

    .line 85
    move/from16 v0, v16

    invoke-static {v0, v2}, Lcom/meizu/common/renderer/RendererUtils;->nextMultipleN(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glDispatchCompute(III)V

    const/16 v2, 0x20

    .line 86
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    .line 69
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 71
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    aget v2, v2, v10

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v2}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->blurH(Lcom/meizu/common/renderer/effect/texture/Texture;Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    goto :goto_1

    .line 80
    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    goto :goto_2
.end method

.method public trimResources(IZ)V
    .locals 4
    .param p1, "level"    # I
    .param p2, "hasEglContext"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 120
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->trimResources(IZ)V

    .line 121
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    .line 123
    iput v2, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    .line 124
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    .line 125
    iput v2, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    .line 126
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    .line 127
    iput-object v3, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    goto :goto_0
.end method
