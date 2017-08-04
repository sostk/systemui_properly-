.class public Lcom/meizu/common/preference/RingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "RingtonePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.meizu.common.preference.RingtonePreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 56
    .local v3, "widgetFrame":Landroid/view/ViewGroup;
    if-nez v1, :cond_1

    .line 76
    .end local v3    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-object v1

    .restart local v3    # "widgetFrame":Landroid/view/ViewGroup;
    :cond_1
    const v4, 0x1020018

    .line 58
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "widgetFrame":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "widgetFrame":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "viewGroupParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 62
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 65
    .local v2, "viewGroupParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 67
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 68
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 69
    invoke-virtual {p0}, Lcom/meizu/common/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/meizu/common/R$dimen;->mz_preference_widget_icon_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 71
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/meizu/common/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/meizu/common/preference/RingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/preference/RingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 41
    return-void
.end method
