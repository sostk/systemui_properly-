.class public Lcom/meizu/common/widget/LabelLayout;
.super Landroid/view/ViewGroup;
.source "LabelLayout.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mGravity:I

.field private mLabelRadiusCornor:I

.field private mLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

.field private final mLineHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineMargins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxLine:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {}, Lcom/meizu/common/widget/LabelLayout;->isIcs()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    :goto_0
    or-int/lit8 v4, v4, 0x30

    iput v4, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    const/16 v4, 0x64

    .line 69
    iput v4, p0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    .line 70
    sget-object v4, Lcom/meizu/common/R$styleable;->LabelLayout:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 73
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/meizu/common/R$styleable;->LabelLayout_labelHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->label_layout_label_height_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 74
    .local v2, "labelHeight":I
    sget v4, Lcom/meizu/common/R$styleable;->LabelLayout_lineMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->label_layout_line_margin_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 75
    .local v3, "lineMargin":I
    sget v4, Lcom/meizu/common/R$styleable;->LabelLayout_itemMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->label_layout_item_margin_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 76
    .local v1, "itemMargin":I
    sget v4, Lcom/meizu/common/R$styleable;->LabelLayout_labelRadiusCorner:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/meizu/common/R$dimen;->label_layout_label_radius_cornor_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCornor:I

    .line 77
    new-instance v4, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v2}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/meizu/common/widget/LabelLayout;->mLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 79
    iget-object v4, p0, Lcom/meizu/common/widget/LabelLayout;->mLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-virtual {v4, v7, v7, v1, v3}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "itemMargin":I
    .end local v2    # "labelHeight":I
    .end local v3    # "lineMargin":I
    :cond_0
    const v4, 0x800003

    .line 48
    goto :goto_0
.end method

.method private static isIcs()Z
    .locals 2

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addLabel(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "labelView"    # Landroid/widget/TextView;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/meizu/common/widget/LabelLayout;->mLayoutParams:Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/LabelLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    return-void
.end method

.method public createButton(Ljava/lang/String;I)Landroid/widget/TextView;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2, p2}, Lcom/meizu/common/widget/LabelLayout;->createButton(Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public createButton(Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "startColor"    # I
    .param p3, "endColor"    # I

    .prologue
    const/4 v6, 0x0

    .line 408
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 409
    .local v0, "btn":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x11

    .line 410
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 411
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->label_layout_label_inner_space_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 412
    .local v1, "innerSpace":I
    invoke-virtual {v0, v1, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 413
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->label_layout_label_text_size_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float v2, v4, v5

    .line 414
    .local v2, "textSize":F
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 415
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 416
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/meizu/common/widget/LabelLayout;->mLabelRadiusCornor:I

    invoke-static {v4, p2, p3, v5}, Lcom/meizu/common/util/GradientDrawableFactory;->getStateListDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, -0x1

    .line 417
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v4, "sans-serif-medium"

    .line 418
    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 419
    .local v3, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 420
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->generateDefaultLayoutParams()Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 359
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 351
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 343
    new-instance v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/LabelLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getWidth()I

    move-result v24

    .line 190
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getHeight()I

    move-result v11

    .line 192
    .local v11, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingTop()I

    move-result v19

    .local v19, "linesSum":I
    const/16 v18, 0x0

    .local v18, "lineWidth":I
    const/16 v16, 0x0

    .line 196
    .local v16, "lineHeight":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v17, "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x7

    packed-switch v25, :pswitch_data_0

    :pswitch_0
    const/4 v12, 0x0

    .local v12, "horizontalGravityFactor":F
    :goto_0
    const/4 v13, 0x0

    .line 212
    .local v13, "i":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-lt v13, v0, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    sub-int v26, v24, v18

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v27

    add-int v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    add-int v19, v19, v16

    const/16 v23, 0x0

    .line 249
    .local v23, "verticalGravityMargin":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x70

    sparse-switch v25, :sswitch_data_0

    .line 261
    :goto_2
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v21

    .line 264
    .local v21, "numLines":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingTop()I

    move-result v22

    .local v22, "top":I
    const/4 v13, 0x0

    .line 266
    :goto_3
    move/from16 v0, v21

    if-lt v13, v0, :cond_3

    .line 339
    return-void

    .end local v12    # "horizontalGravityFactor":F
    .end local v13    # "i":I
    .end local v21    # "numLines":I
    .end local v22    # "top":I
    .end local v23    # "verticalGravityMargin":I
    :pswitch_1
    const/high16 v12, 0x3f000000    # 0.5f

    .line 205
    .restart local v12    # "horizontalGravityFactor":F
    goto :goto_0

    .end local v12    # "horizontalGravityFactor":F
    :pswitch_2
    const/high16 v12, 0x3f800000    # 1.0f

    .line 208
    .restart local v12    # "horizontalGravityFactor":F
    goto :goto_0

    .line 214
    .restart local v13    # "i":I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/meizu/common/widget/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 216
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1

    .line 220
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 222
    .local v20, "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v6, v25, v26

    .line 223
    .local v6, "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v5, v25, v26

    .line 225
    .local v5, "childHeight":I
    add-int v25, v18, v6

    move/from16 v0, v25

    move/from16 v1, v24

    if-gt v0, v1, :cond_2

    .line 237
    :goto_4
    add-int v18, v18, v6

    .line 238
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 239
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 226
    .restart local v5    # "childHeight":I
    .restart local v6    # "childWidth":I
    .restart local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    sub-int v26, v24, v18

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v12

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v27

    add-int v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int v19, v19, v16

    const/16 v16, 0x0

    const/16 v18, 0x0

    .line 234
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    goto :goto_4

    .line 254
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    .restart local v23    # "verticalGravityMargin":I
    :sswitch_1
    sub-int v25, v11, v19

    div-int/lit8 v23, v25, 0x2

    goto/16 :goto_2

    .line 257
    :sswitch_2
    sub-int v23, v11, v19

    goto/16 :goto_2

    .line 268
    .restart local v21    # "numLines":I
    .restart local v22    # "top":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineHeights:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLines:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    check-cast v17, Ljava/util/List;

    .line 270
    .restart local v17    # "lineViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/LabelLayout;->mLineMargins:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 272
    .local v15, "left":I
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "children":I
    const/4 v14, 0x0

    .line 274
    .local v14, "j":I
    :goto_5
    if-lt v14, v9, :cond_4

    .line 334
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_b

    .line 266
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 276
    :cond_4
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 277
    .restart local v4    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v13, v0, :cond_6

    .line 281
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 285
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .line 288
    .restart local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 305
    :goto_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 306
    .restart local v6    # "childWidth":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .restart local v5    # "childHeight":I
    const/4 v10, 0x0

    .line 310
    .local v10, "gravityMargin":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v25

    if-nez v25, :cond_a

    .line 325
    :goto_8
    :sswitch_3
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v15

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    add-int v26, v26, v22

    add-int v26, v26, v10

    add-int v26, v26, v23

    add-int v27, v15, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v27, v27, v28

    add-int v28, v22, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    add-int v28, v28, v10

    add-int v28, v28, v23

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 330
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move/from16 v25, v0

    add-int v25, v25, v6

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int v15, v15, v25

    .line 274
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v10    # "gravityMargin":I
    .end local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_5
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 278
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/meizu/common/widget/LabelLayout;->removeView(Landroid/view/View;)V

    goto :goto_9

    .restart local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_7
    const/high16 v7, -0x80000000

    .line 290
    .local v7, "childWidthMode":I
    move/from16 v8, v18

    .line 292
    .local v8, "childWidthSize":I
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 294
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    move/from16 v25, v0

    if-gez v25, :cond_9

    .line 299
    :goto_a
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    sub-int v26, v16, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v27, v0

    sub-int v26, v26, v27

    const/high16 v27, 0x40000000    # 2.0f

    invoke-static/range {v26 .. v27}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_7

    :cond_8
    const/high16 v7, 0x40000000    # 2.0f

    .line 293
    goto :goto_a

    :cond_9
    const/high16 v7, 0x40000000    # 2.0f

    .line 296
    move-object/from16 v0, v20

    iget v8, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    goto :goto_a

    .line 311
    .end local v7    # "childWidthMode":I
    .end local v8    # "childWidthSize":I
    .restart local v5    # "childHeight":I
    .restart local v6    # "childWidth":I
    .restart local v10    # "gravityMargin":I
    :cond_a
    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->gravity:I

    move/from16 v25, v0

    sparse-switch v25, :sswitch_data_1

    goto/16 :goto_8

    .line 317
    :sswitch_4
    sub-int v25, v16, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    div-int/lit8 v10, v25, 0x2

    goto/16 :goto_8

    .line 320
    :sswitch_5
    sub-int v25, v16, v5

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, v20

    iget v0, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    move/from16 v26, v0

    sub-int v10, v25, v26

    goto/16 :goto_8

    .line 335
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childHeight":I
    .end local v6    # "childWidth":I
    .end local v10    # "gravityMargin":I
    .end local v20    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_b
    add-int v22, v22, v16

    goto/16 :goto_6

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 249
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    .line 311
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x30 -> :sswitch_3
        0x50 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 88
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 90
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingRight()I

    move-result v4

    sub-int v21, v2, v4

    .line 91
    .local v21, "sizeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 93
    .local v20, "sizeHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 94
    .local v19, "modeWidth":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .local v18, "modeHeight":I
    const/16 v22, 0x0

    .line 97
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingBottom()I

    move-result v4

    add-int v7, v2, v4

    .local v7, "height":I
    const/4 v5, 0x0

    .local v5, "lineWidth":I
    const/16 v16, 0x0

    .line 102
    .local v16, "lineHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getChildCount()I

    move-result v8

    .local v8, "childCount":I
    const/4 v14, 0x0

    .line 104
    .local v14, "i":I
    :goto_0
    if-lt v14, v8, :cond_0

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LabelLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v22, v22, v2

    const/high16 v2, 0x40000000    # 2.0f

    .line 174
    move/from16 v0, v19

    if-eq v0, v2, :cond_a

    .end local v22    # "width":I
    :goto_1
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-eq v0, v2, :cond_b

    .end local v7    # "height":I
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/meizu/common/widget/LabelLayout;->setMeasuredDimension(II)V

    .line 177
    return-void

    .line 106
    .restart local v7    # "height":I
    .restart local v22    # "width":I
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 107
    .local v3, "child":Landroid/view/View;
    add-int/lit8 v2, v8, -0x1

    if-eq v14, v2, :cond_2

    const/4 v15, 0x0

    .line 109
    .local v15, "lastChild":Z
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/meizu/common/widget/LabelLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 121
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/meizu/common/widget/LabelLayout$LayoutParams;

    .local v17, "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    const/high16 v12, -0x80000000

    .line 124
    .local v12, "childWidthMode":I
    move/from16 v13, v21

    .local v13, "childWidthSize":I
    const/high16 v9, -0x80000000

    .line 127
    .local v9, "childHeightMode":I
    move/from16 v10, v20

    .line 129
    .local v10, "childHeightSize":I
    move-object/from16 v0, v17

    iget v2, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 132
    move-object/from16 v0, v17

    iget v2, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    if-gez v2, :cond_5

    .line 137
    :goto_4
    move-object/from16 v0, v17

    iget v2, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    if-gez v2, :cond_6

    .line 140
    if-eqz v18, :cond_7

    .line 145
    :goto_5
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    .line 150
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    add-int v11, v2, v4

    .line 152
    .local v11, "childWidth":I
    add-int v2, v5, v11

    move/from16 v0, v21

    if-gt v2, v0, :cond_8

    .line 161
    add-int/2addr v5, v11

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 165
    :goto_6
    if-nez v15, :cond_9

    .line 104
    .end local v9    # "childHeightMode":I
    .end local v10    # "childHeightSize":I
    .end local v11    # "childWidth":I
    .end local v12    # "childWidthMode":I
    .end local v13    # "childWidthSize":I
    .end local v17    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_1
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .end local v15    # "lastChild":Z
    :cond_2
    const/4 v15, 0x1

    .line 107
    goto :goto_3

    .line 111
    .restart local v15    # "lastChild":Z
    :cond_3
    if-eqz v15, :cond_1

    .line 112
    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 113
    add-int v7, v7, v16

    goto :goto_7

    .restart local v9    # "childHeightMode":I
    .restart local v10    # "childHeightSize":I
    .restart local v12    # "childWidthMode":I
    .restart local v13    # "childWidthSize":I
    .restart local v17    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_4
    const/high16 v12, 0x40000000    # 2.0f

    .line 131
    move-object/from16 v0, v17

    iget v2, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    sub-int/2addr v13, v2

    goto :goto_4

    :cond_5
    const/high16 v12, 0x40000000    # 2.0f

    .line 134
    move-object/from16 v0, v17

    iget v13, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->width:I

    goto :goto_4

    :cond_6
    const/high16 v9, 0x40000000    # 2.0f

    .line 139
    move-object/from16 v0, v17

    iget v10, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->height:I

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 142
    goto :goto_5

    .line 154
    .restart local v11    # "childWidth":I
    :cond_8
    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 155
    move v5, v11

    .line 157
    add-int v7, v7, v16

    .line 158
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Lcom/meizu/common/widget/LabelLayout$LayoutParams;->bottomMargin:I

    add-int v16, v2, v4

    goto :goto_6

    .line 166
    :cond_9
    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 167
    add-int v7, v7, v16

    goto :goto_7

    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childHeightMode":I
    .end local v10    # "childHeightSize":I
    .end local v11    # "childWidth":I
    .end local v12    # "childWidthMode":I
    .end local v13    # "childWidthSize":I
    .end local v15    # "lastChild":Z
    .end local v17    # "lp":Lcom/meizu/common/widget/LabelLayout$LayoutParams;
    :cond_a
    move/from16 v22, v21

    .line 174
    goto/16 :goto_1

    .end local v22    # "width":I
    :cond_b
    move/from16 v7, v20

    goto/16 :goto_2
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 364
    iget v0, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    if-ne v0, p1, :cond_0

    .line 376
    :goto_0
    return-void

    :cond_0
    const v0, 0x800007

    .line 365
    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 369
    :goto_1
    and-int/lit8 v0, p1, 0x70

    if-eqz v0, :cond_3

    .line 373
    :goto_2
    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mGravity:I

    .line 374
    invoke-virtual {p0}, Lcom/meizu/common/widget/LabelLayout;->requestLayout()V

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {}, Lcom/meizu/common/widget/LabelLayout;->isIcs()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    :goto_3
    or-int/2addr p1, v0

    goto :goto_1

    :cond_2
    const v0, 0x800003

    goto :goto_3

    .line 370
    :cond_3
    or-int/lit8 p1, p1, 0x30

    goto :goto_2
.end method

.method public setMaxLine(I)V
    .locals 0
    .param p1, "line"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/meizu/common/widget/LabelLayout;->mMaxLine:I

    .line 388
    return-void
.end method
