.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field private final DEMO_MODE_ENABLE:Z

.field private mBrightnessMirror:Landroid/view/View;

.field private mDownTime:I

.field private mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mLastDownTime:I

.field private mLastVolumnTime:J

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

.field private mScreenOnNoTouch:Z

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;

.field private mUpTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 65
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    .line 74
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEMO_MODE_ENABLE:Z

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 76
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 83
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setMotionEventSplittingEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 87
    new-instance v0, Lcom/android/systemui/keyguard/PalmRejection;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/keyguard/PalmRejection;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    .line 81
    return-void
.end method


# virtual methods
.method public cancelExpandHelper()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    .line 343
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 154
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 230
    return v7

    .line 153
    .end local v0    # "down":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 156
    :sswitch_0
    if-nez v0, :cond_2

    .line 157
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    .line 159
    :cond_2
    return v7

    .line 161
    :sswitch_1
    if-nez v0, :cond_3

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onMenuPressed()Z

    move-result v1

    return v1

    .line 165
    :cond_3
    :sswitch_2
    if-nez v0, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onSpacePressed()Z

    move-result v1

    return v1

    .line 173
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEMO_MODE_ENABLE:Z

    if-eqz v1, :cond_6

    .line 174
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_6

    .line 175
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    add-long/2addr v2, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4

    .line 176
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    if-ge v1, v8, :cond_5

    .line 177
    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 178
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 180
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 181
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    if-lt v1, v8, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    if-ne v1, v9, :cond_6

    .line 182
    const-string/jumbo v1, "StatusBarWindowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcast mDownTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mUpTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.meizu.action.CLEAR_PASSWORD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    :cond_6
    :sswitch_4
    const-string/jumbo v1, "StatusBarWindowView"

    const-string/jumbo v2, "KeyEvent.KEYCODE_VOLUME"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_c

    .line 191
    const-string/jumbo v1, "StatusBarWindowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLastVolumnTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string/jumbo v1, "StatusBarWindowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System.currentTimeMillis():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/PalmRejection;->removeView()V

    .line 201
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEMO_MODE_ENABLE:Z

    if-eqz v1, :cond_b

    .line 202
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    add-long/2addr v2, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_8

    .line 203
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    if-lt v1, v8, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    if-eq v1, v2, :cond_9

    .line 204
    :cond_8
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 205
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 207
    :cond_9
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    if-eq v1, v9, :cond_a

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    if-ne v1, v2, :cond_d

    .line 208
    :cond_a
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 209
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 210
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    .line 214
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    .line 216
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    .line 219
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v7}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 221
    return v7

    .line 212
    :cond_d
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    goto :goto_1

    .line 225
    :sswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->interceptHomeKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    return v7

    .line 232
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x4 -> :sswitch_0
        0x18 -> :sswitch_4
        0x19 -> :sswitch_3
        0x3e -> :sswitch_2
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 242
    return v2

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isNotificationFilterPanelShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 254
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getFitsSystemWindows()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 93
    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 94
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 97
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 98
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    .line 100
    :cond_1
    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 101
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 102
    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 112
    :cond_2
    :goto_1
    return v4

    .line 95
    .end local v0    # "changed":Z
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 96
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    if-eq v1, v2, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .end local v0    # "changed":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 104
    .end local v0    # "changed":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v1

    if-nez v1, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    :cond_6
    const/4 v0, 0x1

    .line 108
    .restart local v0    # "changed":Z
    :goto_2
    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setPadding(IIII)V

    goto :goto_1

    .line 106
    .end local v0    # "changed":Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v1

    if-nez v1, :cond_6

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_2

    .end local v0    # "changed":Z
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 117
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 120
    const v3, 0x7f0f0247

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 121
    const v3, 0x7f0f0240

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 125
    const v3, 0x7f0f0282

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 130
    .local v1, "root":Landroid/view/ViewRootImpl;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1, v5}, Landroid/view/ViewRootImpl;->setDrawDuringWindowsAnimating(Z)V

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScrimSrcModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 139
    .local v2, "windowToken":Landroid/os/IBinder;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 140
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/view/WindowManagerGlobal;->changeCanvasOpacity(Landroid/os/IBinder;Z)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    .line 147
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "windowToken":Landroid/os/IBinder;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/PalmRejection;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 148
    const v3, 0x7f0f01bc

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFilterStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 116
    return-void

    .line 145
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setWillNotDraw(Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/PalmRejection;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 389
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 313
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScrimSrcModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 318
    .local v8, "paddedBottom":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v2

    sub-int v9, v0, v2

    .line 319
    .local v9, "paddedRight":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    int-to-float v2, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingLeft()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v8

    .line 327
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingRight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    int-to-float v3, v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getPaddingTop()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    int-to-float v6, v8

    .line 331
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 330
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 334
    .end local v8    # "paddedBottom":I
    .end local v9    # "paddedRight":I
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 335
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 336
    .local v5, "pt":Landroid/graphics/Paint;
    const v0, -0x7f000100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 312
    .end local v5    # "pt":Landroid/graphics/Paint;
    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, "intercept":Z
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    if-eqz v3, :cond_0

    .line 261
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/PalmRejection;->addView()Z

    move-result v0

    .line 265
    .local v0, "addView":Z
    if-eqz v0, :cond_1

    return v5

    .line 267
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyExpanded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 269
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsExpanded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 280
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 283
    :cond_3
    if-eqz v2, :cond_4

    .line 284
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 285
    .local v1, "cancellation":Landroid/view/MotionEvent;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 286
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 287
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 288
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 290
    .end local v1    # "cancellation":Landroid/view/MotionEvent;
    :cond_4
    return v2

    .line 271
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v3

    if-nez v3, :cond_2

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->wakeUpIfDozing(JLandroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 351
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/PalmRejection;->onScreenTurnedOff()V

    .line 353
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    if-eqz v2, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectScreenOnNoTouch(Landroid/content/Context;)V

    .line 358
    :cond_0
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 350
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 362
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 363
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBarWindowView"

    const-string/jumbo v2, "onScreenTurnedOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    .line 365
    .local v0, "state":I
    if-ne v0, v3, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/PalmRejection;->onScreenTurnedOn()V

    .line 368
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 361
    return-void
.end method

.method public onScreenTurnedOnForReason(I)V
    .locals 5
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x1

    .line 372
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "StatusBarWindowView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onScreenTurnedOnForReason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    .line 374
    .local v0, "state":I
    const/16 v1, 0x65

    if-eq p1, v1, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/PalmRejection;->onScreenTurnedOn()V

    .line 377
    :cond_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 371
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "handled":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isQsExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    :cond_0
    if-nez v1, :cond_1

    .line 302
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 304
    .end local v1    # "handled":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 305
    .local v0, "action":I
    if-nez v1, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 306
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 308
    :cond_3
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setWindowFocusChanged(Z)V

    .line 382
    if-nez p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/android/systemui/keyguard/PalmRejection;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/PalmRejection;->removeView()V

    .line 380
    :cond_0
    return-void
.end method
