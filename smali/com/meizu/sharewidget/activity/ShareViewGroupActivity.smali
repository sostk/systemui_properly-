.class public Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;
.super Landroid/app/Activity;
.source "ShareViewGroupActivity.java"

# interfaces
.implements Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$1;,
        Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;
    }
.end annotation


# static fields
.field public static final CHANGE_THEME_MODE:Ljava/lang/String; = "ACTION_CHANGE_THEME"

.field public static final CUSTOM_SHARE_CLICK:Ljava/lang/String; = "CUSTOM_SHARE_CLICK"

.field public static final IS_FORCE_KEEP:Ljava/lang/String; = "IS_FORCE_KEEP"

.field public static final IS_HIDE_SUMMARY:Ljava/lang/String; = "IS_HIDE_SUMMARY"

.field public static final IS_NIGHT_MOD:Ljava/lang/String; = "IS_NIGHT_MOD"

.field public static final IS_SHOW_CHECKBOX_VIEW:Ljava/lang/String; = "IS_SHOW_CHECKBOX_VIEW"

.field public static final SHARE_FILE_COUNT:Ljava/lang/String; = "FILE_COUNT"

.field public static final SHARE_FILE_SIZE:Ljava/lang/String; = "FILE_SIZE"

.field public static final SHOULD_DELETE_AFTER_SHARE:Ljava/lang/String; = "SHOULD_DELETE_AFTER_SHARE"

.field public static final SUMMARY_STRING:Ljava/lang/String; = "SUMMARY_STRING"

.field private static final TAG:Ljava/lang/String; = "MZShareView"


# instance fields
.field private isDayMode:Z

.field private mIntent:Landroid/content/Intent;

.field private mReceiver:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

.field protected mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->isDayMode:Z

    .line 146
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->changeThemeMode(Z)V

    return-void
.end method

.method private applyStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "rootView":Landroid/view/View;
    const/4 v3, 0x1

    .line 109
    new-array v3, v3, [I

    sget v4, Lcom/meizu/sharewidget/R$attr;->mzShareViewStyle:I

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 110
    .local v2, "ta":Landroid/content/res/TypedArray;
    sget v3, Lcom/meizu/sharewidget/R$style;->Widget_Flyme_ShareView_Day:I

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 111
    .local v1, "styleRes":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    invoke-static {v0, v1}, Lcom/meizu/sharewidget/utils/ColorUiUtil;->changeStyle(Landroid/view/View;I)V

    .line 113
    return-void
.end method

.method private changeThemeMode(Z)V
    .locals 1
    .param p1, "isNight"    # Z

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 100
    sget v0, Lcom/meizu/sharewidget/R$style;->Theme_Flyme_Share_Day:I

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setTheme(I)V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    if-nez v0, :cond_1

    .line 105
    :goto_1
    return-void

    .line 98
    :cond_0
    sget v0, Lcom/meizu/sharewidget/R$style;->Theme_Flyme_Share_Night:I

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setTheme(I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->applyStyle()V

    goto :goto_1
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 82
    sget v0, Lcom/meizu/sharewidget/R$id;->share_widget:I

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iput-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    .line 83
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "FILE_COUNT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareFileCount(I)V

    .line 84
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "FILE_SIZE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareFileSize(F)V

    .line 85
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "SUMMARY_STRING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setShareSummary(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setTargetIntent(Landroid/content/Intent;Ljava/lang/Boolean;)V

    .line 87
    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v2, "CUSTOM_SHARE_CLICK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->setOnShareClickListener(Lcom/meizu/sharewidget/widget/ShareViewGroup$OnShareClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "IS_HIDE_SUMMARY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "IS_SHOW_CHECKBOX_VIEW"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    :goto_2
    return-void

    :cond_0
    move-object v0, p0

    .line 87
    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->hideShareSummary()V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->showCheckboxView()V

    goto :goto_2
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 68
    new-instance v1, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;-><init>(Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$1;)V

    iput-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mReceiver:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "ACTION_CHANGE_THEME"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mReceiver:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mReceiver:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mReceiver:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iput-object v1, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mReceiver:Lcom/meizu/sharewidget/activity/ShareViewGroupActivity$ThemeModeReceiver;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 64
    invoke-virtual {p0, v0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->overridePendingTransition(II)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "IS_NIGHT_MOD"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setDayTheme()V

    .line 54
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/meizu/sharewidget/R$layout;->app_common_layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->registerReceiver()V

    .line 57
    invoke-virtual {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 58
    invoke-direct {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->initViews()V

    .line 59
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setNightTheme()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 128
    invoke-direct {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->unRegisterReceiver()V

    .line 129
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v0}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->resetData()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method

.method public onShareClick(Landroid/content/pm/ResolveInfo;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    .line 144
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 123
    return-void
.end method

.method public setDayTheme()V
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/meizu/sharewidget/R$style;->Theme_Flyme_Share_Day:I

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setTheme(I)V

    .line 140
    return-void
.end method

.method public setNightTheme()V
    .locals 1

    .prologue
    .line 135
    sget v0, Lcom/meizu/sharewidget/R$style;->Theme_Flyme_Share_Night:I

    invoke-virtual {p0, v0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->setTheme(I)V

    .line 136
    return-void
.end method
