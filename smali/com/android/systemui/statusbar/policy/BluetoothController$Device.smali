.class public final Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Device"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rssi:S

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
