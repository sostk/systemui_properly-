.class public interface abstract Lcom/flyme/systemui/statusbar/policy/SmartTouchController;
.super Ljava/lang/Object;
.source "SmartTouchController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addSmartTouchControllerCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
.end method

.method public abstract isSmartTouchOn()Z
.end method

.method public abstract removeSmartTouchControllerCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
.end method

.method public abstract setSmartTouchOn(Z)V
.end method
