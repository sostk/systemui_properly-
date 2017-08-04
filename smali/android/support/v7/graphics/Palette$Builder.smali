.class public final Landroid/support/v7/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mGenerator:Landroid/support/v7/graphics/Palette$Generator;

.field private mMaxColors:I

.field private mResizeMaxDimension:I

.field private mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 447
    const/16 v0, 0xc0

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    .line 476
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-static {}, Landroid/support/v7/graphics/Palette;->-get0()Landroid/support/v7/graphics/Palette$Filter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>()V

    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_1
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    .line 455
    return-void
.end method


# virtual methods
.method public generate()Landroid/support/v7/graphics/Palette;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    .line 544
    const/4 v8, 0x0

    .line 548
    .local v8, "logger":Landroid/util/TimingLogger;
    iget-object v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_8

    .line 551
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-gtz v4, :cond_0

    .line 552
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 553
    const-string/jumbo v4, "Minimum dimension size for resizing should should be >= 1"

    .line 552
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_0
    iget-object v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    invoke-static {v4, v5}, Landroid/support/v7/graphics/Palette;->-wrap0(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 559
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1

    .line 560
    const-string/jumbo v4, "Processed Bitmap"

    invoke-virtual {v8, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 564
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 565
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 566
    .local v7, "height":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .local v1, "pixels":[I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 567
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 569
    new-instance v10, Landroid/support/v7/graphics/ColorCutQuantizer;

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 570
    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v2, v12

    .line 569
    :goto_0
    invoke-direct {v10, v1, v4, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;-><init>([II[Landroid/support/v7/graphics/Palette$Filter;)V

    .line 573
    .local v10, "quantizer":Landroid/support/v7/graphics/ColorCutQuantizer;
    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v2, :cond_2

    .line 574
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 576
    :cond_2
    invoke-virtual {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v11

    .line 578
    .local v11, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    if-eqz v12, :cond_3

    .line 579
    const-string/jumbo v2, "Color quantization completed"

    invoke-virtual {v8, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 587
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    .end local v10    # "quantizer":Landroid/support/v7/graphics/ColorCutQuantizer;
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    if-nez v2, :cond_4

    .line 588
    new-instance v2, Landroid/support/v7/graphics/DefaultGenerator;

    invoke-direct {v2}, Landroid/support/v7/graphics/DefaultGenerator;-><init>()V

    iput-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    .line 592
    :cond_4
    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-virtual {v2, v11}, Landroid/support/v7/graphics/Palette$Generator;->generate(Ljava/util/List;)V

    .line 594
    if-eqz v12, :cond_5

    .line 595
    const-string/jumbo v2, "Generator.generate() completed"

    invoke-virtual {v8, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 599
    :cond_5
    new-instance v9, Landroid/support/v7/graphics/Palette;

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mGenerator:Landroid/support/v7/graphics/Palette$Generator;

    invoke-direct {v9, v11, v2, v12}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Landroid/support/v7/graphics/Palette$Generator;Landroid/support/v7/graphics/Palette;)V

    .line 601
    .local v9, "p":Landroid/support/v7/graphics/Palette;
    if-eqz v12, :cond_6

    .line 602
    const-string/jumbo v2, "Created Palette"

    invoke-virtual {v8, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v8}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 606
    :cond_6
    return-object v9

    .line 570
    .end local v9    # "p":Landroid/support/v7/graphics/Palette;
    .end local v11    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    .restart local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "pixels":[I
    .restart local v3    # "width":I
    .restart local v7    # "height":I
    :cond_7
    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v5, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/support/v7/graphics/Palette$Filter;

    goto :goto_0

    .line 583
    .end local v0    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "pixels":[I
    .end local v3    # "width":I
    .end local v7    # "height":I
    :cond_8
    iget-object v11, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    .restart local v11    # "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    goto :goto_1
.end method

.method public maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0
    .param p1, "colors"    # I

    .prologue
    .line 497
    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    .line 498
    return-object p0
.end method
