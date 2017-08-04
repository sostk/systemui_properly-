.class public Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;
.super Landroid/widget/TextSwitcher;
.source "MarqueeTickerView.java"


# instance fields
.field mMarqueeTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextSwitcher;->onSizeChanged(IIII)V

    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->mMarqueeTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->reflowText()V

    .line 33
    return-void
.end method

.method public setTicker(Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;)V
    .locals 0
    .param p1, "t"    # Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTickerView;->mMarqueeTicker:Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;

    .line 38
    return-void
.end method
