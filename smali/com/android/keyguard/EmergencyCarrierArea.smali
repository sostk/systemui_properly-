.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    .line 41
    sget v0, Lcom/android/keyguard/R$id;->carrier_text:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    .line 42
    sget v0, Lcom/android/keyguard/R$id;->bouncer_emergency_call_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyCarrierArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v1, Lcom/android/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 39
    return-void
.end method

.method public setCarrierColor(IF)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/CarrierText;->setAlpha(F)V

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/EmergencyButton;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/EmergencyButton;->setAlpha(F)V

    .line 66
    return-void
.end method

.method public setCarrierTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 62
    return-void

    .line 63
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
