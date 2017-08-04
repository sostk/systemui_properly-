.class Lcom/android/systemui/statusbar/BaseStatusBar$12;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1146
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1148
    instance-of v7, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v7, :cond_0

    .line 1149
    const/4 v7, 0x0

    return v7

    .line 1151
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1152
    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v10, "Trying to show notification guts, but not attached to window"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/4 v7, 0x0

    return v7

    .line 1156
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object v7, p1

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v10, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1160
    const v7, 0x7f0f01bd

    .line 1159
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1161
    .local v1, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v1, :cond_2

    .line 1163
    const/4 v7, 0x0

    return v7

    .line 1167
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 1168
    const-string/jumbo v7, "StatusBar"

    const-string/jumbo v10, "Trying to show notification guts, but already visible"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v7, 0x0

    return v7

    .line 1172
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    move-object v7, p1

    .line 1174
    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowSetting(Z)V

    .line 1175
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/NotificationGuts;->setStatusBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1177
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 1178
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->isInternalApp(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    .line 1179
    .local v4, "isSysApp":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collectNotifictionLongpress(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1181
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-static {v7, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v2, v7

    .line 1182
    .local v2, "horz":D
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v7

    sub-int/2addr v7, p3

    invoke-static {v7, p3}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-double v8, v7

    .line 1183
    .local v8, "vert":D
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .line 1185
    .local v5, "r":F
    const/4 v7, 0x0

    invoke-static {v1, p2, p3, v7, v5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1186
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v10, 0x190

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1187
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1188
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1190
    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-set1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1192
    const/4 v7, 0x1

    return v7
.end method
