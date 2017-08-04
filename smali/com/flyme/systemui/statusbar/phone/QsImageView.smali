.class public Lcom/flyme/systemui/statusbar/phone/QsImageView;
.super Landroid/widget/ImageView;
.source "QsImageView.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/FlymeThemeController$IResourceRefresh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public refreshResource()V
    .locals 3

    .prologue
    .line 29
    const v2, 0x7f0f0017

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/phone/QsImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 30
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 31
    check-cast v0, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    .line 32
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$ResourceIcon;
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/phone/QsImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/flyme/systemui/statusbar/phone/QsImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 28
    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$ResourceIcon;
    :cond_0
    return-void
.end method
