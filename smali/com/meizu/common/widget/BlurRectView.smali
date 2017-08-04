.class public Lcom/meizu/common/widget/BlurRectView;
.super Landroid/widget/FrameLayout;
.source "BlurRectView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurRectView"


# instance fields
.field private mBlurAsBackground:Z

.field private mBlurMethod:Ljava/lang/reflect/Method;

.field private mBlurView:Landroid/view/View;

.field private mDirtyField:Ljava/lang/reflect/Field;

.field private mDownscale:I

.field private mFindBlurRect:Z

.field private mMzImageProcessing:Ljava/lang/Object;

.field private mRadius:I

.field private mRawBitmap:Landroid/graphics/Bitmap;

.field private mViewRootImpl:Ljava/lang/Object;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindowBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x6

    .line 41
    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    const/4 v0, 0x7

    .line 42
    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRadius:I

    .line 46
    iput-boolean v1, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurAsBackground:Z

    .line 47
    iput-boolean v1, p0, Lcom/meizu/common/widget/BlurRectView;->mFindBlurRect:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mVisibleRect:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x6

    .line 41
    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    const/4 v0, 0x7

    .line 42
    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRadius:I

    .line 46
    iput-boolean v1, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurAsBackground:Z

    .line 47
    iput-boolean v1, p0, Lcom/meizu/common/widget/BlurRectView;->mFindBlurRect:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mVisibleRect:Landroid/graphics/Rect;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x6

    .line 41
    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    const/4 v0, 0x7

    .line 42
    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRadius:I

    .line 46
    iput-boolean v1, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurAsBackground:Z

    .line 47
    iput-boolean v1, p0, Lcom/meizu/common/widget/BlurRectView;->mFindBlurRect:Z

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mVisibleRect:Landroid/graphics/Rect;

    .line 62
    return-void
.end method

.method private applyBlur()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v12, 0x0

    .line 215
    iget v1, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    .line 216
    .local v1, "downSampling":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getMeasuredWidth()I

    move-result v8

    .line 217
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getMeasuredHeight()I

    move-result v6

    .line 218
    .local v6, "height":I
    int-to-float v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v7, v10, v9

    .line 220
    .local v7, "scale":F
    const/4 v5, 0x0

    .line 221
    .local v5, "forceRefresh":Z
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 225
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 230
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v12, v12, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {v0, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 235
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/BlurRectView;->drawBlurView(Landroid/graphics/Canvas;)V

    .line 242
    :try_start_0
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurMethod:Ljava/lang/reflect/Method;

    iget-object v10, p0, Lcom/meizu/common/widget/BlurRectView;->mMzImageProcessing:Ljava/lang/Object;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget v13, p0, Lcom/meizu/common/widget/BlurRectView;->mRadius:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 251
    :goto_1
    if-nez v5, :cond_2

    .line 255
    :cond_0
    :goto_2
    return-void

    .line 222
    .end local v0    # "c":Landroid/graphics/Canvas;
    :cond_1
    div-int v9, v8, v1

    div-int v10, v6, v1

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    .line 223
    const/4 v5, 0x1

    goto :goto_0

    .line 249
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 246
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 249
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v4

    .line 248
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 251
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_0

    .line 252
    iput-boolean v14, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurAsBackground:Z

    .line 253
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v9}, Lcom/meizu/common/widget/BlurRectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private drawBlurView(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 262
    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int v0, v2, v3

    .line 263
    .local v0, "x":I
    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v1, v2, v3

    .line 264
    .local v1, "y":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 265
    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 266
    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    return-void
.end method

.method private findNextView()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 189
    .local v7, "view":Landroid/view/ViewParent;
    instance-of v8, v7, Landroid/widget/FrameLayout;

    if-nez v8, :cond_1

    .line 207
    :cond_0
    return v12

    :cond_1
    move-object v6, v7

    .line 190
    check-cast v6, Landroid/widget/FrameLayout;

    .line 191
    .local v6, "parent":Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 192
    .local v1, "count":I
    const/4 v2, 0x0

    .line 193
    .local v2, "foundme":Z
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 194
    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "child":Landroid/view/View;
    if-nez v2, :cond_4

    .line 202
    :cond_2
    if-eq v0, p0, :cond_5

    .line 193
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 196
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 197
    .local v4, "intersectedRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getRight()I

    move-result v10

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getBottom()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v5

    .line 198
    .local v5, "isIntersected":Z
    if-eqz v5, :cond_3

    .line 199
    iput-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurView:Landroid/view/View;

    .line 200
    const/4 v8, 0x1

    return v8

    .line 203
    .end local v4    # "intersectedRect":Landroid/graphics/Rect;
    .end local v5    # "isIntersected":Z
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private getWindowBackgroundDrawable()V
    .locals 7

    .prologue
    const v6, 0x1010054

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 174
    new-array v0, v4, [I

    aput v6, v0, v5

    .line 175
    .local v0, "attrs":[I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 176
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v6, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 178
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 179
    .local v2, "style":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/BlurRectView;->mWindowBackground:Landroid/graphics/drawable/Drawable;

    .line 180
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 181
    return-void
.end method

.method private softwareBlur(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 43
    .param p1, "rawBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/BlurRectView;->mRadius:I

    move/from16 v26, v0

    .local v26, "radius":I
    const/4 v2, 0x1

    .line 310
    move/from16 v0, v26

    if-lt v0, v2, :cond_0

    .line 314
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 315
    .local v5, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 317
    .local v9, "h":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    .line 318
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 320
    add-int/lit8 v37, v5, -0x1

    .line 321
    .local v37, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 322
    .local v21, "hm":I
    mul-int v36, v5, v9

    .line 323
    .local v36, "wh":I
    add-int v2, v26, v26

    add-int/lit8 v14, v2, 0x1

    .line 325
    .local v14, "div":I
    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 326
    .local v24, "r":[I
    move/from16 v0, v36

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 327
    .local v17, "g":[I
    move/from16 v0, v36

    new-array v10, v0, [I

    .line 329
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v35, v0

    .line 331
    .local v35, "vmin":[I
    add-int/lit8 v2, v14, 0x1

    shr-int/lit8 v15, v2, 0x1

    .line 332
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 333
    mul-int/lit16 v2, v15, 0x100

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .local v16, "dv":[I
    const/16 v22, 0x0

    .line 334
    .local v22, "i":I
    :goto_0
    mul-int/lit16 v2, v15, 0x100

    move/from16 v0, v22

    if-lt v0, v2, :cond_1

    const/16 v40, 0x0

    .local v40, "yi":I
    const/16 v42, 0x0

    .line 340
    .local v42, "yw":I
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v14, v4, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    aput v6, v4, v7

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [[I

    .line 345
    .local v32, "stack":[[I
    add-int/lit8 v25, v26, 0x1

    .local v25, "r1":I
    const/16 v39, 0x0

    .line 349
    .local v39, "y":I
    :goto_1
    move/from16 v0, v39

    if-lt v0, v9, :cond_2

    const/16 v38, 0x0

    .line 422
    .local v38, "x":I
    :goto_2
    move/from16 v0, v38

    if-lt v0, v5, :cond_7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    .line 503
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 505
    return-object p1

    .end local v3    # "pix":[I
    .end local v5    # "w":I
    .end local v9    # "h":I
    .end local v10    # "b":[I
    .end local v14    # "div":I
    .end local v15    # "divsum":I
    .end local v16    # "dv":[I
    .end local v17    # "g":[I
    .end local v21    # "hm":I
    .end local v22    # "i":I
    .end local v24    # "r":[I
    .end local v25    # "r1":I
    .end local v32    # "stack":[[I
    .end local v35    # "vmin":[I
    .end local v36    # "wh":I
    .end local v37    # "wm":I
    .end local v38    # "x":I
    .end local v39    # "y":I
    .end local v40    # "yi":I
    .end local v42    # "yw":I
    :cond_0
    const/4 v2, 0x0

    .line 311
    return-object v2

    .line 335
    .restart local v3    # "pix":[I
    .restart local v5    # "w":I
    .restart local v9    # "h":I
    .restart local v10    # "b":[I
    .restart local v14    # "div":I
    .restart local v15    # "divsum":I
    .restart local v16    # "dv":[I
    .restart local v17    # "g":[I
    .restart local v21    # "hm":I
    .restart local v22    # "i":I
    .restart local v24    # "r":[I
    .restart local v35    # "vmin":[I
    .restart local v36    # "wh":I
    .restart local v37    # "wm":I
    :cond_1
    div-int v2, v22, v15

    aput v2, v16, v22

    .line 334
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .restart local v25    # "r1":I
    .restart local v32    # "stack":[[I
    .restart local v39    # "y":I
    .restart local v40    # "yi":I
    .restart local v42    # "yw":I
    :cond_2
    const/4 v13, 0x0

    .local v13, "bsum":I
    const/16 v20, 0x0

    .local v20, "gsum":I
    const/16 v30, 0x0

    .local v30, "rsum":I
    const/4 v12, 0x0

    .local v12, "boutsum":I
    const/16 v19, 0x0

    .local v19, "goutsum":I
    const/16 v29, 0x0

    .local v29, "routsum":I
    const/4 v11, 0x0

    .local v11, "binsum":I
    const/16 v18, 0x0

    .local v18, "ginsum":I
    const/16 v28, 0x0

    .line 351
    .local v28, "rinsum":I
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 371
    move/from16 v33, v26

    .local v33, "stackpointer":I
    const/16 v38, 0x0

    .line 373
    .restart local v38    # "x":I
    :goto_4
    move/from16 v0, v38

    if-lt v0, v5, :cond_5

    .line 420
    add-int v42, v42, v5

    .line 349
    add-int/lit8 v39, v39, 0x1

    goto :goto_1

    .end local v33    # "stackpointer":I
    .end local v38    # "x":I
    :cond_3
    const/4 v2, 0x0

    .line 352
    move/from16 v0, v22

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, v37

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v2, v2, v40

    aget v23, v3, v2

    .line 353
    .local v23, "p":I
    add-int v2, v22, v26

    aget-object v31, v32, v2

    .local v31, "sir":[I
    const/4 v2, 0x0

    const/high16 v4, 0xff0000

    .line 354
    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x10

    aput v4, v31, v2

    const/4 v2, 0x1

    const v4, 0xff00

    .line 355
    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x8

    aput v4, v31, v2

    const/4 v2, 0x2

    .line 356
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    aput v4, v31, v2

    .line 357
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v27, v25, v2

    .local v27, "rbs":I
    const/4 v2, 0x0

    .line 358
    aget v2, v31, v2

    mul-int v2, v2, v27

    add-int v30, v30, v2

    const/4 v2, 0x1

    .line 359
    aget v2, v31, v2

    mul-int v2, v2, v27

    add-int v20, v20, v2

    const/4 v2, 0x2

    .line 360
    aget v2, v31, v2

    mul-int v2, v2, v27

    add-int/2addr v13, v2

    .line 361
    if-gtz v22, :cond_4

    const/4 v2, 0x0

    .line 366
    aget v2, v31, v2

    add-int v29, v29, v2

    const/4 v2, 0x1

    .line 367
    aget v2, v31, v2

    add-int v19, v19, v2

    const/4 v2, 0x2

    .line 368
    aget v2, v31, v2

    add-int/2addr v12, v2

    .line 351
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 362
    aget v2, v31, v2

    add-int v28, v28, v2

    const/4 v2, 0x1

    .line 363
    aget v2, v31, v2

    add-int v18, v18, v2

    const/4 v2, 0x2

    .line 364
    aget v2, v31, v2

    add-int/2addr v11, v2

    goto :goto_5

    .line 375
    .end local v23    # "p":I
    .end local v27    # "rbs":I
    .end local v31    # "sir":[I
    .restart local v33    # "stackpointer":I
    .restart local v38    # "x":I
    :cond_5
    aget v2, v16, v30

    aput v2, v24, v40

    .line 376
    aget v2, v16, v20

    aput v2, v17, v40

    .line 377
    aget v2, v16, v13

    aput v2, v10, v40

    .line 379
    sub-int v30, v30, v29

    .line 380
    sub-int v20, v20, v19

    .line 381
    sub-int/2addr v13, v12

    .line 383
    sub-int v2, v33, v26

    add-int v34, v2, v14

    .line 384
    .local v34, "stackstart":I
    rem-int v2, v34, v14

    aget-object v31, v32, v2

    .restart local v31    # "sir":[I
    const/4 v2, 0x0

    .line 386
    aget v2, v31, v2

    sub-int v29, v29, v2

    const/4 v2, 0x1

    .line 387
    aget v2, v31, v2

    sub-int v19, v19, v2

    const/4 v2, 0x2

    .line 388
    aget v2, v31, v2

    sub-int/2addr v12, v2

    .line 390
    if-eqz v39, :cond_6

    .line 393
    :goto_6
    aget v2, v35, v38

    add-int v2, v2, v42

    aget v23, v3, v2

    .restart local v23    # "p":I
    const/4 v2, 0x0

    const/high16 v4, 0xff0000

    .line 395
    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x10

    aput v4, v31, v2

    const/4 v2, 0x1

    const v4, 0xff00

    .line 396
    and-int v4, v4, v23

    shr-int/lit8 v4, v4, 0x8

    aput v4, v31, v2

    const/4 v2, 0x2

    .line 397
    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    aput v4, v31, v2

    const/4 v2, 0x0

    .line 399
    aget v2, v31, v2

    add-int v28, v28, v2

    const/4 v2, 0x1

    .line 400
    aget v2, v31, v2

    add-int v18, v18, v2

    const/4 v2, 0x2

    .line 401
    aget v2, v31, v2

    add-int/2addr v11, v2

    .line 403
    add-int v30, v30, v28

    .line 404
    add-int v20, v20, v18

    .line 405
    add-int/2addr v13, v11

    .line 407
    add-int/lit8 v2, v33, 0x1

    rem-int v33, v2, v14

    .line 408
    rem-int v2, v33, v14

    aget-object v31, v32, v2

    const/4 v2, 0x0

    .line 410
    aget v2, v31, v2

    add-int v29, v29, v2

    const/4 v2, 0x1

    .line 411
    aget v2, v31, v2

    add-int v19, v19, v2

    const/4 v2, 0x2

    .line 412
    aget v2, v31, v2

    add-int/2addr v12, v2

    const/4 v2, 0x0

    .line 414
    aget v2, v31, v2

    sub-int v28, v28, v2

    const/4 v2, 0x1

    .line 415
    aget v2, v31, v2

    sub-int v18, v18, v2

    const/4 v2, 0x2

    .line 416
    aget v2, v31, v2

    sub-int/2addr v11, v2

    .line 418
    add-int/lit8 v40, v40, 0x1

    .line 373
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_4

    .line 391
    .end local v23    # "p":I
    :cond_6
    add-int v2, v38, v26

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v37

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v35, v38

    goto :goto_6

    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v28    # "rinsum":I
    .end local v29    # "routsum":I
    .end local v30    # "rsum":I
    .end local v31    # "sir":[I
    .end local v33    # "stackpointer":I
    .end local v34    # "stackstart":I
    :cond_7
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    const/16 v20, 0x0

    .restart local v20    # "gsum":I
    const/16 v30, 0x0

    .restart local v30    # "rsum":I
    const/4 v12, 0x0

    .restart local v12    # "boutsum":I
    const/16 v19, 0x0

    .restart local v19    # "goutsum":I
    const/16 v29, 0x0

    .restart local v29    # "routsum":I
    const/4 v11, 0x0

    .restart local v11    # "binsum":I
    const/16 v18, 0x0

    .restart local v18    # "ginsum":I
    const/16 v28, 0x0

    .line 424
    .restart local v28    # "rinsum":I
    move/from16 v0, v26

    neg-int v2, v0

    mul-int v41, v2, v5

    .line 425
    .local v41, "yp":I
    move/from16 v0, v26

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    .line 454
    move/from16 v40, v38

    .line 455
    move/from16 v33, v26

    .restart local v33    # "stackpointer":I
    const/16 v39, 0x0

    .line 456
    :goto_8
    move/from16 v0, v39

    if-lt v0, v9, :cond_b

    .line 422
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .end local v33    # "stackpointer":I
    :cond_8
    const/4 v2, 0x0

    .line 426
    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v40, v2, v38

    .line 428
    add-int v2, v22, v26

    aget-object v31, v32, v2

    .restart local v31    # "sir":[I
    const/4 v2, 0x0

    .line 430
    aget v4, v24, v40

    aput v4, v31, v2

    const/4 v2, 0x1

    .line 431
    aget v4, v17, v40

    aput v4, v31, v2

    const/4 v2, 0x2

    .line 432
    aget v4, v10, v40

    aput v4, v31, v2

    .line 434
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v27, v25, v2

    .line 436
    .restart local v27    # "rbs":I
    aget v2, v24, v40

    mul-int v2, v2, v27

    add-int v30, v30, v2

    .line 437
    aget v2, v17, v40

    mul-int v2, v2, v27

    add-int v20, v20, v2

    .line 438
    aget v2, v10, v40

    mul-int v2, v2, v27

    add-int/2addr v13, v2

    .line 440
    if-gtz v22, :cond_9

    const/4 v2, 0x0

    .line 445
    aget v2, v31, v2

    add-int v29, v29, v2

    const/4 v2, 0x1

    .line 446
    aget v2, v31, v2

    add-int v19, v19, v2

    const/4 v2, 0x2

    .line 447
    aget v2, v31, v2

    add-int/2addr v12, v2

    .line 450
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 425
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 441
    aget v2, v31, v2

    add-int v28, v28, v2

    const/4 v2, 0x1

    .line 442
    aget v2, v31, v2

    add-int v18, v18, v2

    const/4 v2, 0x2

    .line 443
    aget v2, v31, v2

    add-int/2addr v11, v2

    goto :goto_9

    .line 451
    :cond_a
    add-int v41, v41, v5

    goto :goto_a

    .line 458
    .end local v27    # "rbs":I
    .end local v31    # "sir":[I
    .restart local v33    # "stackpointer":I
    :cond_b
    aget v2, v3, v40

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    aget v4, v16, v30

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    aget v4, v16, v20

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    aget v4, v16, v13

    or-int/2addr v2, v4

    aput v2, v3, v40

    .line 460
    sub-int v30, v30, v29

    .line 461
    sub-int v20, v20, v19

    .line 462
    sub-int/2addr v13, v12

    .line 464
    sub-int v2, v33, v26

    add-int v34, v2, v14

    .line 465
    .restart local v34    # "stackstart":I
    rem-int v2, v34, v14

    aget-object v31, v32, v2

    .restart local v31    # "sir":[I
    const/4 v2, 0x0

    .line 467
    aget v2, v31, v2

    sub-int v29, v29, v2

    const/4 v2, 0x1

    .line 468
    aget v2, v31, v2

    sub-int v19, v19, v2

    const/4 v2, 0x2

    .line 469
    aget v2, v31, v2

    sub-int/2addr v12, v2

    .line 471
    if-eqz v38, :cond_c

    .line 474
    :goto_b
    aget v2, v35, v39

    add-int v23, v38, v2

    .restart local v23    # "p":I
    const/4 v2, 0x0

    .line 476
    aget v4, v24, v23

    aput v4, v31, v2

    const/4 v2, 0x1

    .line 477
    aget v4, v17, v23

    aput v4, v31, v2

    const/4 v2, 0x2

    .line 478
    aget v4, v10, v23

    aput v4, v31, v2

    const/4 v2, 0x0

    .line 480
    aget v2, v31, v2

    add-int v28, v28, v2

    const/4 v2, 0x1

    .line 481
    aget v2, v31, v2

    add-int v18, v18, v2

    const/4 v2, 0x2

    .line 482
    aget v2, v31, v2

    add-int/2addr v11, v2

    .line 484
    add-int v30, v30, v28

    .line 485
    add-int v20, v20, v18

    .line 486
    add-int/2addr v13, v11

    .line 488
    add-int/lit8 v2, v33, 0x1

    rem-int v33, v2, v14

    .line 489
    aget-object v31, v32, v33

    const/4 v2, 0x0

    .line 491
    aget v2, v31, v2

    add-int v29, v29, v2

    const/4 v2, 0x1

    .line 492
    aget v2, v31, v2

    add-int v19, v19, v2

    const/4 v2, 0x2

    .line 493
    aget v2, v31, v2

    add-int/2addr v12, v2

    const/4 v2, 0x0

    .line 495
    aget v2, v31, v2

    sub-int v28, v28, v2

    const/4 v2, 0x1

    .line 496
    aget v2, v31, v2

    sub-int v18, v18, v2

    const/4 v2, 0x2

    .line 497
    aget v2, v31, v2

    sub-int/2addr v11, v2

    .line 499
    add-int v40, v40, v5

    .line 456
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    .line 472
    .end local v23    # "p":I
    :cond_c
    add-int v2, v39, v25

    move/from16 v0, v21

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/2addr v2, v5

    aput v2, v35, v39

    goto :goto_b
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 149
    iget-boolean v2, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurAsBackground:Z

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 156
    return-void

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v1, "src":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .local v0, "dst":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2, v1, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 13

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 97
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v9, :cond_0

    .line 99
    :goto_0
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v9, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v9, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 101
    invoke-direct {p0}, Lcom/meizu/common/widget/BlurRectView;->getWindowBackgroundDrawable()V

    :try_start_0
    const-class v9, Landroid/view/View;

    const-string/jumbo v10, "getViewRootImpl"

    const/4 v11, 0x0

    .line 104
    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .local v8, "getViewRootImpl":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 105
    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, p0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mViewRootImpl:Ljava/lang/Object;

    .line 106
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mViewRootImpl:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "mDirty"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mDirtyField:Ljava/lang/reflect/Field;

    .line 107
    iget-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mDirtyField:Ljava/lang/reflect/Field;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_4

    .end local v8    # "getViewRootImpl":Ljava/lang/reflect/Method;
    :goto_1
    :try_start_1
    const-string/jumbo v9, "android.graphics.MZImageProcessing"

    .line 121
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "stackBlurMultiThreadProcessedByNative"

    const/4 v10, 0x2

    .line 122
    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/graphics/Bitmap;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurMethod:Ljava/lang/reflect/Method;

    const-string/jumbo v9, "getInstance"

    const/4 v10, 0x0

    .line 123
    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .local v7, "getInstance":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 124
    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mMzImageProcessing:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_9

    .line 136
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "getInstance":Ljava/lang/reflect/Method;
    :goto_2
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BlurRectView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    goto :goto_0

    .line 118
    :catch_0
    move-exception v5

    .line 109
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 115
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 117
    .local v4, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v4}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 135
    .end local v4    # "e":Ljava/lang/NoSuchFieldException;
    :catch_5
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v5

    .line 128
    .restart local v5    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    :catch_7
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_8
    move-exception v3

    .line 132
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 135
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v6

    .line 134
    .restart local v6    # "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 141
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 143
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_0
.end method

.method public onDraw()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 79
    .local v1, "dirty":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/meizu/common/widget/BlurRectView;->mDirtyField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 88
    .end local v1    # "dirty":Landroid/graphics/Rect;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/BlurRectView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-static {v5, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    .line 89
    .local v4, "isDirty":Z
    :cond_0
    iget-boolean v5, p0, Lcom/meizu/common/widget/BlurRectView;->mFindBlurRect:Z

    if-nez v5, :cond_3

    .line 92
    :cond_1
    :goto_1
    return-void

    .line 81
    .end local v4    # "isDirty":Z
    .restart local v1    # "dirty":Landroid/graphics/Rect;
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/meizu/common/widget/BlurRectView;->mDirtyField:Ljava/lang/reflect/Field;

    iget-object v6, p0, Lcom/meizu/common/widget/BlurRectView;->mViewRootImpl:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Rect;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "dirty":Landroid/graphics/Rect;
    goto :goto_0

    .line 86
    .local v1, "dirty":Landroid/graphics/Rect;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v1    # "dirty":Landroid/graphics/Rect;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "isDirty":Z
    :cond_3
    if-eqz v4, :cond_1

    .line 90
    invoke-direct {p0}, Lcom/meizu/common/widget/BlurRectView;->applyBlur()V

    goto :goto_1
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/meizu/common/widget/BlurRectView;->mFindBlurRect:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BlurRectView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 74
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/BlurRectView;->findNextView()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/BlurRectView;->mFindBlurRect:Z

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 510
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/BlurRectView;

    .line 511
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 512
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    iput-object v1, p0, Lcom/meizu/common/widget/BlurRectView;->mRawBitmap:Landroid/graphics/Bitmap;

    .line 164
    iget-boolean v0, p0, Lcom/meizu/common/widget/BlurRectView;->mBlurAsBackground:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/BlurRectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public saveToSdCard(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 287
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x28

    invoke-virtual {p1, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 290
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 293
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 294
    .local v3, "fo":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 296
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fo":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBlurDownScale(I)V
    .locals 2
    .param p1, "downscale"    # I

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    const/4 v0, 0x1

    .line 276
    iget v1, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mDownscale:I

    .line 277
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 1
    .param p1, "radius"    # I

    .prologue
    .line 271
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/BlurRectView;->mRadius:I

    .line 272
    return-void
.end method

.method public setBlurRaidusAndDownScale(II)V
    .locals 0
    .param p1, "radius"    # I
    .param p2, "downscale"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/BlurRectView;->setBlurRadius(I)V

    .line 281
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/BlurRectView;->setBlurDownScale(I)V

    .line 282
    return-void
.end method
