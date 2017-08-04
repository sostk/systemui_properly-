.class public Lcom/flyme/systemui/recents/ScreenPinningRequest;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;
    }
.end annotation


# instance fields
.field private final mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mRequestWindow:Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/recents/ScreenPinningRequest;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/recents/ScreenPinningRequest;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 62
    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mWindowManager:Landroid/view/WindowManager;

    .line 57
    return-void
.end method


# virtual methods
.method public getRequestLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3
    .param p1, "isLandscape"    # Z

    .prologue
    const/4 v2, -0x2

    .line 125
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 128
    if-eqz p1, :cond_0

    const/16 v0, 0x15

    .line 125
    :goto_0
    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v1

    .line 129
    :cond_0
    const/16 v0, 0x51

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest;->mRequestWindow:Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-virtual {v0}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->onConfigurationChanged()V

    .line 91
    :cond_0
    return-void
.end method
