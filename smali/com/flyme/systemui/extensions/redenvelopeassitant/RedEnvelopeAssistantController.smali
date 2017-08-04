.class public interface abstract Lcom/flyme/systemui/extensions/redenvelopeassitant/RedEnvelopeAssistantController;
.super Ljava/lang/Object;
.source "RedEnvelopeAssistantController.java"


# virtual methods
.method public abstract customizeHeadsUpStyle(Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;)V
.end method

.method public abstract isRedEnvelopeAssistantEnabled()Z
.end method

.method public abstract isRedEnvelopeAssistantNotification(Ljava/lang/String;)Z
.end method

.method public abstract isRedEnvelopeNotification(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract onHeadsUpNotificationShown(Landroid/app/PendingIntent;)V
.end method

.method public abstract onNotificationClicked(Landroid/app/PendingIntent;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation
.end method

.method public abstract quickClickRedEnvelopeNotificationMode()Z
.end method
