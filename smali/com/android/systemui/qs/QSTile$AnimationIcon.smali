.class public Lcom/android/systemui/qs/QSTile$AnimationIcon;
.super Lcom/android/systemui/qs/QSTile$ResourceIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationIcon"
.end annotation


# instance fields
.field private mAllowAnimation:Z

.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile;I)V
    .locals 1
    .param p2, "resId"    # I

    .prologue
    .line 419
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    .local p1, "this$0":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<TTState;>;"
    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$ResourceIcon;)V

    .line 419
    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setAllowAnimation(Z)V
    .locals 0
    .param p1, "allowAnimation"    # Z

    .prologue
    .line 424
    .local p0, "this":Lcom/android/systemui/qs/QSTile$AnimationIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.AnimationIcon;"
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 423
    return-void
.end method
