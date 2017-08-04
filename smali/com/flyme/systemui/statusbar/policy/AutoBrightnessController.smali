.class public interface abstract Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController;
.super Ljava/lang/Object;
.source "AutoBrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addAutoBrightnessControllerCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
.end method

.method public abstract initAutoBrightness()V
.end method

.method public abstract isAutoBrightnessOn()Z
.end method

.method public abstract removeAutoBrightnessControllerCallback(Lcom/flyme/systemui/statusbar/policy/AutoBrightnessController$AutoBrightnessControllerCallback;)V
.end method

.method public abstract setAutoBrightnessOn(Z)V
.end method
