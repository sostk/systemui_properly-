.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IRoamingIcon;


# instance fields
.field private mShowRoaming:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showRoaming"    # Z

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;->mShowRoaming:Z

    .line 368
    return-void
.end method


# virtual methods
.method public getRoamingIcon(II)I
    .locals 1
    .param p1, "roamingIcon"    # I
    .param p2, "dateTypeIcon"    # I

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeRoamingIcon;->mShowRoaming:Z

    if-eqz v0, :cond_0

    .end local p1    # "roamingIcon":I
    :goto_0
    return p1

    .restart local p1    # "roamingIcon":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method
