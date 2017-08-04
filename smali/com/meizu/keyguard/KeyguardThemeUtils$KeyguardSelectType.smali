.class public Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardSelectType"
.end annotation


# instance fields
.field public mItemNum:I

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/keyguard/KeyguardThemeUtils$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mMarginBottom:I

.field public mMarginLeft:I

.field mUseSystemLockWallpaper:Z

.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZ)V
    .locals 2
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;
    .param p2, "marginLeft"    # I
    .param p3, "marginBottom"    # I
    .param p4, "systemLockWallpaper"    # Z

    .prologue
    const/4 v1, 0x0

    .line 297
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItemNum:I

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItems:Ljava/util/List;

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mUseSystemLockWallpaper:Z

    .line 290
    iput v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mMarginLeft:I

    .line 291
    iput v1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mMarginBottom:I

    .line 298
    iput p2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mMarginLeft:I

    .line 299
    iput p3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mMarginBottom:I

    .line 300
    iput-boolean p4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mUseSystemLockWallpaper:Z

    .line 297
    return-void
.end method


# virtual methods
.method public addItem(Lcom/meizu/keyguard/KeyguardThemeUtils$Item;)V
    .locals 1
    .param p1, "item"    # Lcom/meizu/keyguard/KeyguardThemeUtils$Item;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "KeyguardSelectType"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;

    .line 321
    .local v2, "tmp":Lcom/meizu/keyguard/KeyguardThemeUtils$Item;
    iget-object v3, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;->mTarget:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 322
    const-string/jumbo v3, ", item = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mTarget = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/meizu/keyguard/KeyguardThemeUtils$Item;->mTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v3, ", mMarginLeft = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mMarginLeft:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mMarginBottom = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mMarginBottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    .end local v2    # "tmp":Lcom/meizu/keyguard/KeyguardThemeUtils$Item;
    :cond_1
    iget-object v3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItemNum:I

    .line 327
    const-string/jumbo v3, ", itemNum = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$KeyguardSelectType;->mItemNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
