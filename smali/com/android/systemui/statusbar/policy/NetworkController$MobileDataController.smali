.class public interface abstract Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileDataController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V
.end method

.method public abstract canConfigMobileData()Z
.end method

.method public abstract getModes()[I
.end method

.method public abstract getPreferredMode()I
.end method

.method public abstract isCalling()Z
.end method

.method public abstract isMobileDataEnabled()Z
.end method

.method public abstract isMobileDataSupported()Z
.end method

.method public abstract removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$Callback;)V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.method public abstract setPreferredMode(I)V
.end method
