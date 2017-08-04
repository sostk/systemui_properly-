.class public Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;
.super Ljava/lang/Object;
.source "FlymeDrawableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;
    }
.end annotation


# instance fields
.field private final mDrawableMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mMapMaxSize:I

.field private mMapMaxTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    .line 14
    const v0, 0xea60

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "maxTime"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    .line 14
    const v0, 0xea60

    iput v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    .line 32
    iput p1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    .line 33
    iput p2, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    .line 31
    return-void
.end method

.method private clear()V
    .locals 14

    .prologue
    .line 59
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    iget v10, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxSize:I

    if-le v9, v10, :cond_4

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "lastPkg":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v6, "oldPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    .local v2, "lastUpdate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 64
    .local v4, "nowTime":J
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v1    # "lastPkg":Ljava/lang/String;
    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 65
    .local v7, "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    .line 66
    .local v0, "appIcon":Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;
    iget-wide v10, v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    cmp-long v9, v10, v2

    if-gez v9, :cond_1

    .line 67
    iget-wide v2, v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    .line 68
    move-object v1, v7

    .line 70
    :cond_1
    iget-wide v10, v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    sub-long v10, v4, v10

    iget v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mMapMaxTime:I

    int-to-long v12, v9

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 71
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "appIcon":Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 75
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 76
    .restart local v7    # "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v2    # "lastUpdate":J
    .end local v4    # "nowTime":J
    .end local v6    # "oldPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 54
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    .line 38
    .local v0, "appDrawable":Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mUpdateTime:J

    .line 40
    iget-object v1, v0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 42
    :cond_0
    return-object v2
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->mDrawableMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;

    invoke-direct {v1, p2}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache$AppDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/phone/FlymeDrawableCache;->clear()V

    .line 45
    return-void
.end method
