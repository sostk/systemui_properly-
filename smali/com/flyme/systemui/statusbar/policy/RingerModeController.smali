.class public interface abstract Lcom/flyme/systemui/statusbar/policy/RingerModeController;
.super Ljava/lang/Object;
.source "RingerModeController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
.end method

.method public abstract isMuteOn()Z
.end method

.method public abstract isVibrateOn()Z
.end method

.method public abstract removeRingerModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/RingerModeController$RingerModeControllerCallback;)V
.end method

.method public abstract setMuteOn(Z)V
.end method

.method public abstract setVibrateOn(Z)V
.end method
