.class public Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;
.super Ljava/lang/Object;
.source "FlymeThemeController.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/utils/ThemeUtils$IViewGroupRecursion;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;,
        Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IFontRefresh;,
        Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;
    }
.end annotation


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mViewTypeFaceMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/ViewGroup;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    .line 36
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$1;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.meizu.font.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "com.meizu.theme.change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method


# virtual methods
.method public addViewGroup(Landroid/view/ViewGroup;Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public isHandle(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeThemeController;->mViewTypeFaceMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
