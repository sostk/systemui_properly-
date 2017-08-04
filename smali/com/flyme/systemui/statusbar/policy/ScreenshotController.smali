.class public interface abstract Lcom/flyme/systemui/statusbar/policy/ScreenshotController;
.super Ljava/lang/Object;
.source "ScreenshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;
    }
.end annotation


# virtual methods
.method public abstract addScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
.end method

.method public abstract capturePicture()V
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract removeScreenshotControllerCallback(Lcom/flyme/systemui/statusbar/policy/ScreenshotController$ScreenshotControllerCallback;)V
.end method

.method public abstract takeScreenShot()V
.end method
