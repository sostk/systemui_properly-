.class public Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;
.super Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;
.source "ScreenshotShareActivity.java"


# instance fields
.field private mCheckBoxView:Landroid/widget/CheckBox;

.field private mChooseComponentName:Landroid/content/ComponentName;

.field private mCopyStateFlag:I

.field private mCopySucessShareRunnable:Ljava/lang/Runnable;

.field private mDefaultShareRunnable:Ljava/lang/Runnable;

.field private mOriginPicPath:Ljava/lang/String;

.field private mShareIntent:Landroid/content/Intent;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mChooseComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)I
    .locals 1

    iget v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    return v0
.end method

.method static synthetic -get2(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mOriginPicPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mShareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get4(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Lcom/meizu/sharewidget/widget/ShareViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    return-object v0
.end method

.method static synthetic -get5(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;I)I
    .locals 0

    iput p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    return p1
.end method

.method static synthetic -set1(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopySucessShareRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;Z)V
    .locals 0
    .param p1, "sucess"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->callCopyRunnableIfNeed(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->copyPicIfNeed()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;-><init>()V

    return-void
.end method

.method private callCopyRunnableIfNeed(Z)V
    .locals 3
    .param p1, "sucess"    # Z

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mChooseComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopySucessShareRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopySucessShareRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    invoke-virtual {p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mOriginPicPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flyme/systemui/screenshot/ScreenshotTempUtils;->deleteOriginPic(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_1
    :goto_0
    iput-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopySucessShareRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mDefaultShareRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mChooseComponentName:Landroid/content/ComponentName;

    .line 83
    return-void

    .line 90
    :cond_2
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mDefaultShareRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mDefaultShareRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private copyPicIfNeed()V
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    if-eqz v0, :cond_0

    .line 100
    return-void

    .line 102
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    .line 103
    const-string/jumbo v0, "SS.ShareActivity"

    const-string/jumbo v1, "Start copy pic"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$3;-><init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/meizu/sharewidget/activity/ShareViewGroupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mShareIntent:Landroid/content/Intent;

    .line 35
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mShareIntent:Landroid/content/Intent;

    const-string/jumbo v2, "file_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mOriginPicPath:Ljava/lang/String;

    .line 36
    new-instance v1, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$1;-><init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)V

    iput-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mDefaultShareRunnable:Ljava/lang/Runnable;

    .line 45
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mShareWidget:Lcom/meizu/sharewidget/widget/ShareViewGroup;

    invoke-virtual {v1}, Lcom/meizu/sharewidget/widget/ShareViewGroup;->getCheckBoxView()Landroid/widget/CheckBox;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCheckBoxView:Landroid/widget/CheckBox;

    .line 46
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCheckBoxView:Landroid/widget/CheckBox;

    const v2, 0x7f0900db

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 47
    const/4 v0, 0x1

    .line 48
    .local v0, "deleteAfterShared":Z
    const-string/jumbo v1, "screenshot_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 49
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "delete_after_shared"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    .end local v0    # "deleteAfterShared":Z
    :cond_0
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCheckBoxView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 54
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCheckBoxView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->copyPicIfNeed()V

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCheckBoxView:Landroid/widget/CheckBox;

    new-instance v2, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;

    invoke-direct {v2, p0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity$2;-><init>(Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    return-void
.end method

.method public onShareClick(Landroid/content/pm/ResolveInfo;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 70
    const-string/jumbo v2, "SS.ShareActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShareClick : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mChooseComponentName:Landroid/content/ComponentName;

    .line 72
    iget-object v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCheckBoxView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 74
    :cond_0
    iget v2, p0, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->mCopyStateFlag:I

    if-ne v2, v0, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->callCopyRunnableIfNeed(Z)V

    .line 69
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 74
    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0, v1}, Lcom/flyme/systemui/screenshot/ScreenshotShareActivity;->callCopyRunnableIfNeed(Z)V

    goto :goto_1
.end method
