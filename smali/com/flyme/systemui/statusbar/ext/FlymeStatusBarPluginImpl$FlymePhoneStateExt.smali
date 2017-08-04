.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsFullDataType()Z
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public createSimViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subID"    # I

    .prologue
    .line 420
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 421
    const v1, 0x7f040062

    const/4 v2, 0x0

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method
