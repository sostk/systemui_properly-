.class public interface abstract Lcom/android/systemui/statusbar/policy/ZenModeController;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
.end method

.method public abstract getZen()I
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V
.end method

.method public abstract setUserId(I)V
.end method

.method public abstract setZen(ILandroid/net/Uri;Ljava/lang/String;)V
.end method
