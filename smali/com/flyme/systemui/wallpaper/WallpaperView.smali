.class public Lcom/flyme/systemui/wallpaper/WallpaperView;
.super Landroid/widget/RelativeLayout;
.source "WallpaperView.java"

# interfaces
.implements Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;


# instance fields
.field private mContent:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHasNotifications:Z

.field private mShowWallpaperText:Z

.field private mTitle:Landroid/widget/TextView;

.field private mWallpaperFunctionEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/wallpaper/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/wallpaper/WallpaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private updateWallpaperTextViewVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mWallpaperFunctionEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mShowWallpaperText:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mHasNotifications:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->registerKeyguardWallpaperCallback(Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;)V

    .line 77
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/wallpaper/KeyguardWallpaperController;->removeKeyguardWallpaperCallback(Lcom/flyme/systemui/wallpaper/IKeyguardWallpaperCallback;)V

    .line 83
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 39
    const v0, 0x7f0f0290

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/wallpaper/WallpaperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mTitle:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0f0291

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/wallpaper/WallpaperView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContent:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public onKeyguardNotOccluded()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onNotificationChange(Z)V
    .locals 0
    .param p1, "hasNotifications"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mHasNotifications:Z

    .line 57
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/WallpaperView;->updateWallpaperTextViewVisibility()V

    .line 55
    return-void
.end method

.method public onShowWallpaperText(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mShowWallpaperText:Z

    .line 73
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/WallpaperView;->updateWallpaperTextViewVisibility()V

    .line 71
    return-void
.end method

.method public onWallpaperFunctionEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mWallpaperFunctionEnable:Z

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/wallpaper/WallpaperView;->setVisibility(I)V

    .line 61
    :goto_0
    return-void

    .line 66
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/wallpaper/WallpaperView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWallpaperTextChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/WallpaperView;->mContent:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    return-void
.end method
