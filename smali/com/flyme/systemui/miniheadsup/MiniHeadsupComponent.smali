.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;
.super Ljava/lang/Object;
.source "MiniHeadsupComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;
    }
.end annotation


# static fields
.field private static sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;


# instance fields
.field private final mApplication:Lcom/android/systemui/SystemUIApplication;

.field private final mContext:Landroid/content/Context;

.field private mExistAutoSnooze:Z

.field mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

.field private final mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

.field private mMiniWindowShow:Z

.field private mShowingKey:Ljava/lang/String;

.field private mStart:Z

.field private final mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;


# direct methods
.method static synthetic -wrap0(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V
    .locals 0

    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->hideMiniHeadsup()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/flyme/systemui/statusbar/policy/GameModeController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 46
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    invoke-direct {v0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mApplication:Lcom/android/systemui/SystemUIApplication;

    .line 48
    const v0, 0x7f040061

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iput-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    new-instance v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$1;-><init>(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;)V

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setCallback(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$Callback;)V

    .line 55
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V

    .line 43
    return-void
.end method

.method private final hideMiniHeadsup()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setVisibility(I)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    .line 214
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->stopMiniHeadsup()V

    .line 210
    :cond_0
    return-void
.end method

.method private isDNDEnableAndInGameMode()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newComponent(Landroid/content/Context;Lcom/flyme/systemui/statusbar/policy/GameModeController;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .prologue
    .line 37
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;-><init>(Landroid/content/Context;Lcom/flyme/systemui/statusbar/policy/GameModeController;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    .line 40
    :cond_0
    sget-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->sMiniHeadsupComponent:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    return-object v0
.end method

.method private final showMiniHeadsup()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setVisibility(I)V

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    .line 205
    return-void
.end method

.method private startMiniHeadsup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    const-string/jumbo v1, "MiniHeadsup"

    const-string/jumbo v2, "start MiniHeadsup"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 175
    const/16 v1, 0x7d3

    .line 174
    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 176
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "MiniHeadsup"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 178
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v1, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_WIDTH:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 179
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mWindowConfig:Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;

    iget v1, v1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->WINDOW_HEIGHT:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 180
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 181
    const v1, 0x1000108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 184
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 185
    iget-object v2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    .line 184
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->hideMiniHeadsup()V

    .line 189
    iput-boolean v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    .line 170
    return-void
.end method

.method private stopMiniHeadsup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string/jumbo v0, "MiniHeadsup"

    const-string/jumbo v1, "stop MiniHeadsup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v2, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setFirstGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v2, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v2, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAction(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 200
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSnoozeAction(Landroid/app/PendingIntent;)V

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    .line 192
    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 14
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 61
    .local v7, "notification":Landroid/app/Notification;
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result v5

    .line 62
    .local v5, "gameMode":Z
    if-eqz v5, :cond_f

    .line 63
    iget-object v11, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "flyme.miniheadsup"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 64
    .local v3, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 65
    .local v2, "buildSucess":Z
    const/4 v10, 0x0

    .line 66
    .local v10, "skipToThrid":Z
    if-eqz v3, :cond_0

    .line 69
    :try_start_0
    const-string/jumbo v11, "first_color"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 70
    .local v8, "result1":Ljava/lang/Object;
    iget-object v12, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    if-nez v8, :cond_2

    const/high16 v11, -0x1000000

    .end local v8    # "result1":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v12, v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setFirstGroupColor(I)V

    .line 72
    const-string/jumbo v11, "second_left_color"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 73
    .restart local v8    # "result1":Ljava/lang/Object;
    const-string/jumbo v11, "second_right_color"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 74
    .local v9, "result2":Ljava/lang/Object;
    iget-object v13, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    if-nez v8, :cond_3

    const/high16 v11, -0x1000000

    move v12, v11

    .line 75
    .end local v8    # "result1":Ljava/lang/Object;
    :goto_1
    if-nez v9, :cond_4

    const/high16 v11, -0x1000000

    .line 74
    .end local v9    # "result2":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v13, v12, v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupColor(II)V

    .line 77
    const-string/jumbo v11, "first_icon"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 78
    .restart local v8    # "result1":Ljava/lang/Object;
    const-string/jumbo v11, "first_text"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 79
    .restart local v9    # "result2":Ljava/lang/Object;
    if-nez v8, :cond_5

    if-nez v9, :cond_5

    .line 80
    new-instance v11, Ljava/lang/Exception;

    const-string/jumbo v12, "first_icon and first_text is null"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v8    # "result1":Ljava/lang/Object;
    .end local v9    # "result2":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 120
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    if-eqz v2, :cond_e

    .line 124
    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 126
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->onFirstLayout()V

    .line 127
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->requestLayout()V

    .line 128
    if-eqz v10, :cond_1

    .line 129
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->skipToThrid()V

    .line 58
    .end local v2    # "buildSucess":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v10    # "skipToThrid":Z
    :cond_1
    :goto_4
    return-void

    .line 70
    .restart local v2    # "buildSucess":Z
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "result1":Ljava/lang/Object;
    .restart local v10    # "skipToThrid":Z
    :cond_2
    :try_start_1
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "result1":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_0

    .line 74
    .restart local v8    # "result1":Ljava/lang/Object;
    .restart local v9    # "result2":Ljava/lang/Object;
    :cond_3
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "result1":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v12, v11

    goto :goto_1

    .line 75
    :cond_4
    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "result2":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_2

    .line 82
    .restart local v8    # "result1":Ljava/lang/Object;
    .restart local v9    # "result2":Ljava/lang/Object;
    :cond_5
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    check-cast v8, Landroid/graphics/Bitmap;

    .end local v8    # "result1":Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9    # "result2":Ljava/lang/Object;
    invoke-virtual {v11, v8, v9}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setFirstGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v11, "second_left_value"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 85
    .restart local v8    # "result1":Ljava/lang/Object;
    const-string/jumbo v11, "second_right_value"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 86
    .restart local v9    # "result2":Ljava/lang/Object;
    if-nez v8, :cond_6

    .line 87
    new-instance v11, Ljava/lang/Exception;

    const-string/jumbo v12, "second_left_value is null"

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    .line 89
    :cond_6
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11, v8, v9}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSecondGroupValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    const-string/jumbo v11, "second_left_action"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 92
    const-string/jumbo v11, "second_right_action"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 93
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    check-cast v8, Landroid/app/PendingIntent;

    .end local v8    # "result1":Ljava/lang/Object;
    check-cast v9, Landroid/app/PendingIntent;

    .end local v9    # "result2":Ljava/lang/Object;
    invoke-virtual {v11, v8, v9}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAction(Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 95
    const-string/jumbo v11, "third_color"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 96
    .restart local v8    # "result1":Ljava/lang/Object;
    iget-object v12, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    if-nez v8, :cond_9

    const/high16 v11, -0x1000000

    .end local v8    # "result1":Ljava/lang/Object;
    :goto_5
    invoke-virtual {v12, v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThirdGroupColor(I)V

    .line 98
    const-string/jumbo v11, "third_icon"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 99
    .restart local v8    # "result1":Ljava/lang/Object;
    const-string/jumbo v11, "third_text"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 100
    .restart local v9    # "result2":Ljava/lang/Object;
    if-nez v8, :cond_a

    if-nez v9, :cond_a

    .line 101
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThridGroupEnable(Z)V

    .line 110
    :cond_7
    :goto_6
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    iget-object v12, v7, Landroid/app/Notification;->snoozeIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setSnoozeAction(Landroid/app/PendingIntent;)V

    .line 112
    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mExistAutoSnooze:Z

    if-nez v11, :cond_8

    .line 113
    const-string/jumbo v11, "auto_snooze"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 114
    .local v1, "auto_snooze":Z
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11, v1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setAutoSnooze(Z)V

    .line 115
    iput-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mExistAutoSnooze:Z

    .line 118
    .end local v1    # "auto_snooze":Z
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 96
    .end local v9    # "result2":Ljava/lang/Object;
    :cond_9
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "result1":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_5

    .line 103
    .restart local v8    # "result1":Ljava/lang/Object;
    .restart local v9    # "result2":Ljava/lang/Object;
    :cond_a
    iget-object v13, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    move-object v0, v8

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v11, v0

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v13, v11, v12}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThridGroupValue(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 104
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->setThridGroupEnable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    .line 106
    const/4 v10, 0x1

    goto :goto_6

    .line 131
    .end local v8    # "result1":Ljava/lang/Object;
    .end local v9    # "result2":Ljava/lang/Object;
    :cond_b
    if-nez v10, :cond_1

    .line 132
    iput-object v6, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    .line 133
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mExistAutoSnooze:Z

    .line 134
    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-nez v11, :cond_c

    .line 135
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->startMiniHeadsup()V

    .line 138
    :cond_c
    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v11, :cond_d

    .line 139
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->cancelAnimationWithoutCallback()V

    .line 143
    :goto_7
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->onFirstLayout()V

    .line 144
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    invoke-virtual {v11}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->requestLayout()V

    .line 145
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateShow(Z)V

    goto/16 :goto_4

    .line 141
    :cond_d
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->showMiniHeadsup()V

    goto :goto_7

    .line 149
    :cond_e
    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 150
    iget-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v12, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v11, v12}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 151
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    goto/16 :goto_4

    .line 154
    .end local v2    # "buildSucess":Z
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v10    # "skipToThrid":Z
    :cond_f
    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-nez v11, :cond_1

    iget-boolean v11, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-eqz v11, :cond_1

    if-nez v5, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->stopMiniHeadsup()V

    goto/16 :goto_4
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniHeadsupWindow:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;

    sget-object v2, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;->Cancel:Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;

    invoke-virtual {v1, v2}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow;->animateHide(Lcom/flyme/systemui/miniheadsup/MiniHeadsupWindow$HideState;)V

    .line 163
    iput-object v3, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mShowingKey:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->isDNDEnableAndInGameMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mMiniWindowShow:Z

    if-eqz v1, :cond_2

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-boolean v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->mStart:Z

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->stopMiniHeadsup()V

    goto :goto_0
.end method
