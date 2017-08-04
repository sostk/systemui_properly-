.class public Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;
.super Ljava/lang/Object;
.source "MeizuCustomizedIcons.java"


# static fields
.field private static mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;


# instance fields
.field final MZ_CUSTOMIZED_ICONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "packageNames":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "ar":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 48
    .local v2, "len":I
    new-array v3, v2, [I

    .line 49
    .local v3, "packageIcons":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 50
    invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    aput v6, v3, v1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 54
    aget-object v4, v5, v1

    .line 55
    .local v4, "packageName":Ljava/lang/String;
    aget v6, v3, v1

    if-eqz v6, :cond_2

    .line 56
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 57
    iget-object v6, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    aget v7, v3, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " icon is repeat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 62
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " icon is not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 43
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static getIcons(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 40
    sget-object v0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->mIcons:Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMeizuCustomizedIcon(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeizuCustomizedIcon(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defIcon"    # I

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defIcon":I
    :cond_0
    return p2
.end method

.method public isMeizuCustomizedIcon(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
