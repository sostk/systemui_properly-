.class public Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;
.super Landroid/widget/TextView;
.source "FlymeBatteryTextView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/phone/IStatusBarColorFilter;


# instance fields
.field private mLowColor:I

.field private mLowColorMode:Z

.field private mNormalColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    .line 16
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    .line 16
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    .line 16
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    .line 27
    return-void
.end method

.method private apply()V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->setTextColor(I)V

    .line 37
    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    goto :goto_0
.end method


# virtual methods
.method public setColorFilter(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mNormalColor:I

    .line 44
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->apply()V

    .line 42
    return-void
.end method

.method public setLowColorMode(ZI)V
    .locals 0
    .param p1, "lowColorMode"    # Z
    .param p2, "color"    # I

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColorMode:Z

    .line 33
    iput p2, p0, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->mLowColor:I

    .line 34
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/FlymeBatteryTextView;->apply()V

    .line 31
    return-void
.end method
