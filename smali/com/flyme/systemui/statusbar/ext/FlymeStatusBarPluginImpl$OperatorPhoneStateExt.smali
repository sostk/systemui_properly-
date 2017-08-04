.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;


# instance fields
.field private mShowSimIndicator:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "showSimIndicator"    # Z

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mShowSimIndicator:Z

    .line 433
    return-void
.end method


# virtual methods
.method public IsFullDataType()Z
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method public createSimViewGroup(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    .line 439
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040063

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 440
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    const v3, 0x7f0f0181

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 441
    .local v0, "simIndicator":Landroid/widget/ImageView;
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mShowSimIndicator:Z

    if-eqz v3, :cond_1

    .line 442
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 443
    .local v1, "slotID":I
    if-nez v1, :cond_0

    const v3, 0x7f020420

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 447
    .end local v1    # "slotID":I
    :goto_1
    return-object v2

    .line 443
    .restart local v1    # "slotID":I
    :cond_0
    const v3, 0x7f020421

    goto :goto_0

    .line 445
    .end local v1    # "slotID":I
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
